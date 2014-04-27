#! /user/bin/python
#-*- coding:utf-8 -*-
# TODO クラスに書き換え

"""
json化されたコーパスデータにPerlexの辞書を用いてタグ付けを行う．

ARGS: test_corpus/json_after_conv_table/コーパス名

OUT: test_corpus/taged_corpus/コーパス名
"""
__author__='Kensuke Mitsuzawa';
__date__='2013/11/09';

import json, codecs, sys, subprocess, sys, os;


class tagging:
    def __init__(self, input_path, lex_dic_path):
        self.input_path=input_path
        self.lex_dic_path=lex_dic_path



    def load_json_file(self):
        after_inf_dictionary={};
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
        f=codecs.open('../lex_json_experiment', 'r', 'utf-8');
        after_inf_dictionary=json.load(f)
        return after_inf_dictionary;


def document_spliter(doc):
    """
    ARG: unicode doc
    RETURN: list str_doc [ list sentences [ unicode token ] ]
    """
    # TODO ここから修正．元の文書構造を保つために，改行コードに気をつかわないといけない．
    print [doc]
    tokens_in_doc=doc.split()
    print tokens_in_doc
    str_doc=[]
    sentences=[]
    for token in tokens_in_doc:
        if token==u'\n':
            str_doc.append(sentences)
            sentences=[]
        else:
            sentences.append(token) 

    return str_doc 

def do_tag(after_inf_dictionary, file_path):
    """
    ARG after_inf_dictionary: json obj.
    ARG file_path: unicode path_to_inputfile
    """
    new_corpus=[]
   
    corpus=(codecs.open(file_path, 'r', 'utf-8')).read()
    str_doc=document_spliter(corpus) 
    
    for sentence_data in str_doc:
        tags=[];
        stems=[];
        pos_tags=[];
        categories=[];
        inflections=[];
        tokens=sentence_data['after_conv_tokens'];
        for token in tokens:
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

        sentence_data.setdefault('morph_tag', tags);
        sentence_data.setdefault('stem', stems);
        sentence_data.setdefault('pos_perlex', pos_tags);
        sentence_data.setdefault('category', categories);
        sentence_data.setdefault('inflection', inflections);

        new_corpus.append(sentence_data);
    return new_corpus;

def main(file_path):
  

    """
    # TODO まずここでjson化されている前提なのがよくない
    file_name=os.path.split(corpus_path)[-1];
    corpus_json=codecs.open(corpus_path, 'r', 'utf-8');
    corpus=json.load(corpus_json);
    """
    # for test tagging
    after_inf_dictionary=load_json_file('../lex_json_experiment')

    # for actual tagging
    #after_inf_dictionary=load_json_file('./lex_json') 
    
    new_corpus=do_tag(after_inf_dictionary, file_path)
   
    file_name=os.path.basename(file_path)
    # TODO ここはoutputにかんする記述なので，そのままでいいはず
    with codecs.open('../test_corpus/taged_corpus/'+file_name, 'w', 'utf-8') as f:
        json.dump(new_corpus, f, indent=4, ensure_ascii=False);

    #nullの数を数える，全tokenの数を数える
    num_token=0;
    num_null=0;
    num_all_tag=0;
    for token in new_corpus:
        num_token+=len(token['after_conv_tokens']);
        for tags in token['morph_tag']:
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
    
    print 'The number of all token:{}'.format(num_token);
    print 'The number of null morph_tag:{}'.format(num_null);
    print 'The number of all tags:{}'.format(num_all_tag);
    print 'Coverage rate is:{}'.format(coverage); 
    print 'Ambiguity rate is:{}'.format(ambiguity);

if __name__=='__main__':
    main(sys.argv[1])
