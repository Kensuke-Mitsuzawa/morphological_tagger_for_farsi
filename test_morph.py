#! /user/bin/python
#-*- coding:utf-8 -*-
__author__='Kensuke Mitsuzawa';
__date__='2013/10/06';

import sys, json, codecs;

def load_json_file():
    lex_dic={};
    f=codecs.open('./lex_json', 'r', 'utf-8');
    lex_dic=json.load(f);
    return lex_dic;

def main(input_word):
    lex_dic=load_json_file();
    result_candidate=lex_dic[input_word];
    for i, item in enumerate(result_candidate):
        print item;


if __name__=='__main__':
    main(sys.argv[1]);


