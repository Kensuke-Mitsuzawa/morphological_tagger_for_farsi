#! /user/bin/python
#-*- coding:utf-8 -*-

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
        tokens=sentence_data['original'];
        for token in tokens:
            tag=[];
            stem=[];
            if token in after_inf_dictionary:
                for items in after_inf_dictionary[token]:
                    stem.append(items[2]);
                    tag.append(items[3]);
            else:
                tag.append(None);
                stem.append(None);
            tag=list(set(tag));
            stem=list(set(stem));
            
            tags.append(tag);
            stems.append(stem); 
            
        sentence_data.setdefault('tag', tags);
        sentence_data.setdefault('stem', stems);
        new_corpus.append(sentence_data);
    return new_corpus;

def main(file_path):
    corpus_json=codecs.open(file_path, 'r', 'utf-8');
    corpus=json.load(corpus_json);
    after_inf_dictionary=load_json_file('./lex_json'); 
    new_corpus=do_tag(after_inf_dictionary, corpus);
    with codecs.open('taged.json', 'w', 'utf-8') as f:
        json.dump(new_corpus, f, indent=4, ensure_ascii=False);

if __name__=='__main__':
    main(sys.argv[1])
