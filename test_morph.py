#! /user/bin/python
#-*- coding:utf-8 -*-
__author__='Kensuke Mitsuzawa';
__date__='2013/11/18';

import sys, json, codecs;

def load_json_file():
    lex_dic={};
    f=codecs.open('./lex_json', 'r', 'utf-8');
    lex_dic=json.load(f);
    return lex_dic;

if __name__=='__main__':
    lex_dic=load_json_file();
    print "lex json file is loaded!";
    print "Please input word you want to look up. If you want to end, type 'quit()'";

    input_word=u'';
    while not input_word==u'quit()':
        input_word=raw_input().decode('utf-8');
        try:
            result_candidate=lex_dic[input_word];
            for i, item in enumerate(result_candidate):
                print item;
        except KeyError:
            print 'No such input word:{}'.format(input_word);
        print '------------------------------'
        print 'Please input next word.(If you want to end, input quit() )'
    else:
        sys.exit('Bye Bye!')
