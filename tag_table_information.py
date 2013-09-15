#! /user/bin/python
#-*- coding:utf-8 -*-
__author__='Kensuke Mitsuzawa';
__date__='2013/09/15';

import json, codecs, sys, subprocess;



def do_tag(table_map, corpus):
    new_corpus=[];

    for sentence in corpus:
        sentence_id=str(sentence['sentence_id']);
        tokens=sentence['tokens'];

        if sentence_id in table_map:
            #table_data is list
            table_data=table_map[sentence_id];

            #each_table_data is map
            for each_table_data in table_data:
                orig_persian=each_table_data['orig_persian_roman'];

                try:
                    position_matched_token=tokens.index(orig_persian);
                    print position_matched_token
                except ValueError:
                    pass;


def main():
    table_path='./table_json';
    corpus_path='./taged.json';
    with codecs.open(table_path, 'r', 'utf-8') as f:
        table_map=json.load(f);
    with codecs.open(corpus_path, 'r', 'utf-8') as f:
        corpus=json.load(f);

    do_tag(table_map, corpus);

if __name__=='__main__':
    main();
