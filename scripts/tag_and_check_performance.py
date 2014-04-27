#! /user/bin/python
#-*- coding:utf-8 -*-

"""
json化されたコーパスデータにPerlexの辞書を用いてタグ付けを行う．
ARGS: test_corpus/json_after_conv_table/コーパス名
OUT: test_corpus/taged_corpus/コーパス名
"""
__author__='Kensuke Mitsuzawa';
__date__='2014/04/27';

import json, codecs, sys, subprocess, sys, os, re

class tagging:
    """
    Give morphological information for input document. Morphological dictionaly is from perlex.
    With this class, the data format of output is below. The index of token corresponds with token's morphological information.
        list document [dictionaly sentence 
        {
        'tokens': list tokens [unicode token],
        'morph_tag': list morph_info [list morph_candidate [unicode morph_info]],
        'stem': list stem_info [list stem_candidates [unicode stem_info]],
        'pos_perlex': list pos_info [list pos_candidate [unicode pos]],
        'category': list categories [list category_candidates [unicode category]],
        'inflection':list inflection [list inflection_candidates [unicode inflection]]
        }
        ]
    """
    def __init__(self, input_path, lex_dic_path):
        self.input_path=input_path
        self.lex_dic_path=lex_dic_path

    def main(self):
        after_inf_dictionary=self.load_json_file(self.lex_dic_path)       

        new_corpus=self.do_tag(after_inf_dictionary)
        
        file_name=os.path.basename(file_path)
        with codecs.open('../test_corpus/taged_corpus/'+file_name, 'w', 'utf-8') as f:
            json.dump(new_corpus, f, indent=4, ensure_ascii=False);

        self.statics(new_corpus)

    def statics(self, new_corpus):
        #nullの数を数える，全tokenの数を数える
        num_sent=0
        num_token=0
        num_null=0
        num_all_tag=0
        for sent in new_corpus:
            num_sent+=1
            num_token+=len(sent['tokens']);
            for tags in sent['morph_tag']:
                if tags==[None]:
                    num_null+=1;
                else: 
                    num_all_tag+=len(tags);
        
        try:
            coverage=float(num_token-num_null) / num_token;
        except ZeroDivisionError:
            coverage=0

        try:
            ambiguity=float(num_all_tag) / num_token;
        except ZeroDivisionError:
            ambiguity=0
       
        print 'The number of sentences:{}'.format(num_sent)
        print 'The number of all token:{}'.format(num_token);
        print 'The number of null morph_tag:{}'.format(num_null);
        print 'The number of all tags:{}'.format(num_all_tag);
        print 'Coverage rate is:{}'.format(coverage); 
        print 'Ambiguity rate is:{}'.format(ambiguity);

    def load_json_file(self, lex_dic_path):
        after_inf_dictionary={}
        #高速読み込みに向けて改良中
        '''
        with codecs.open(path, 'r', 'utf-8') as f:
            for tuple_line in f:
                tuple_line=tuple_line.strip(u'\n');
                print [tuple_line]
                inf_tuple=json.load(tuple_line);
                after_inf_dictionary.setdefault(inf_tuple[0], inf_tuple[1]);
        print after_inf_dictionary; 
        '''
        f=codecs.open(lex_dic_path, 'r', 'utf-8')
        after_inf_dictionary=json.load(f)
    
        return after_inf_dictionary

    def pre_process(self, doc):
        """
        ARGS: unicode doc
        RETURN: unicode replaced_doc
        replace irregular \n patterns to regular pattern 
        """
        replaced_doc=re.sub(ur'(.)\.', u'\1 .', doc)
        replaced_doc=re.sub(ur'\.\n', u'. \n', replaced_doc) 
        replaced_doc=re.sub(ur'\n(.+\s)', u'\n \1', replaced_doc)

        return replaced_doc

    def document_spliter(self, doc):
        """
        ARG: unicode doc
        RETURN: list str_doc [ list sentences [ unicode token ] ]
        """
        replaced_doc=self.pre_process(doc)
        sentences_in_doc=replaced_doc.split(u'\n')
        str_doc=[sentence.split() for sentence in sentences_in_doc]

        return str_doc 

    def do_tag(self, after_inf_dictionary):
        """
        ARG after_inf_dictionary: json obj.
        ARG file_path: unicode path_to_inputfile
        """
        new_corpus=[]
       
        corpus=(codecs.open(self.input_path, 'r', 'utf-8')).read()
        str_doc=self.document_spliter(corpus) 
        
        for tokens_in_sent in str_doc:
            sentence_data={}

            tags=[];
            stems=[];
            pos_tags=[];
            categories=[];
            inflections=[];
            for token in tokens_in_sent:
                tag=[];
                stem=[];
                pos_perlex=[];
                category=[];
                inflection=[];
                if token in after_inf_dictionary:
                    for items in after_inf_dictionary[token]:
                        pos_perlex.append(items[1]); 
                        stem.append(items[2]);
                        tag.append(items[3]);
                        category.append(items[-1][0]);
                        inflection.append(items[-1][-1]);
                else:
                    tag.append(None);
                    stem.append(None);
                    pos_perlex.append(None);
                    category.append(None);
                    inflection.append(None);

                tags.append(tag);
                stems.append(stem); 
                pos_tags.append(pos_perlex);
                categories.append(category);
                inflections.append(inflection);

            sentence_data.setdefault('tokens', tokens_in_sent)
            sentence_data.setdefault('morph_tag', tags);
            sentence_data.setdefault('stem', stems);
            sentence_data.setdefault('pos_perlex', pos_tags);
            sentence_data.setdefault('category', categories);
            sentence_data.setdefault('inflection', inflections);

            new_corpus.append(sentence_data);
        
        return new_corpus;
    
if __name__=='__main__':
    file_path=sys.argv[1]
    lex_dic_path=sys.argv[2]

    tagging_example=tagging(file_path, lex_dic_path)
    tagging_example.main()
