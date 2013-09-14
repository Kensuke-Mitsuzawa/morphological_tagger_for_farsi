#! /user/bin/python
#-*- coding:utf-8 -*-
__author__='Kensuke Mitsuzawa';
__date__='2013/09/14';

import json, codecs, sys, subprocess;

def load_json_file(path):
    f=codecs.open(path, 'r', 'utf-8');
    after_inf_dictionary=json.load(f)
    return after_inf_dictionary;

def do_tag(after_inf_dictionary, corpus):
    new_corpus=[];
    for sentence_data in corpus:
        tags=[];
        stems=[];
        pos_tags=[];
        tokens=sentence_data['tokens'];
        for token in tokens:
            tag=[];
            stem=[];
            pos_perlex=[];
            if token in after_inf_dictionary:
                for items in after_inf_dictionary[token]:
                    pos_perlex.append(items[1]); 
                    stem.append(items[2]);
                    tag.append(items[3]);
            else:
                tag.append(None);
                stem.append(None);
                pos_perlex.append(None); 

            tags.append(tag);
            stems.append(stem); 
            pos_tags.append(pos_perlex);

        sentence_data.setdefault('morph_tag', tags);
        sentence_data.setdefault('stem', stems);
        sentence_data.setdefault('pos_perlex', pos_tags);

        new_corpus.append(sentence_data);
    return new_corpus;

def main(file_path):
    corpus_json=codecs.open(file_path, 'r', 'utf-8');
    corpus=json.load(corpus_json);
    after_inf_dictionary=load_json_file('./lex_json'); 
    new_corpus=do_tag(after_inf_dictionary, corpus);
    with codecs.open('taged.json', 'w', 'utf-8') as f:
        json.dump(new_corpus, f, indent=4, ensure_ascii=False);

    #nullの数を数える，全tokenの数を数える
    num_token=0;
    num_null=0;
    num_all_tag=0;
    for token in new_corpus:
        num_token+=len(token['tokens']);
        for tags in token['morph_tag']:
            if tags==[None]:
                num_null+=1;
            
            num_all_tag+=len(tags);

    coverage=float(num_token-num_null) / num_token;
    ambiguity=float(num_all_tag) / num_token;
    print 'The number of all token:{}'.format(num_token);
    print 'The number of null morph_tag:{}'.format(num_null);
    print 'The number of all tags:{}'.format(num_all_tag);
    print 'Coverage rate is:{}'.format(coverage); 
    print 'Ambiguity rate is:{}'.format(ambiguity);



if __name__=='__main__':
    main(sys.argv[1])
