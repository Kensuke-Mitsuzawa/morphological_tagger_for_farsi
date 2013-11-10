#! /usr/bin/python
# -*- coding:utf-8 -*-
"""
SMTで文書全体を翻訳するために，表層後だけを取り出す必要が出て来た．その必要性に答えるために作成したスクリプト
ARGS: -m {annotation※アノテーションが終わっている形式から取り出す場合, json※とりあえず，対応表をかけたあとの状態から取り出す場合} -i INPUTFILE

"""
__author__='Kensuke Mitsuzawa';
__date__='2013/11/09';

import json, os, argparse, codecs, re

def from_annotation_file(file_path):
    #アノテーション済みのファイル(.annotation)から表層文を得る関数
    surface_word_stack=[];
    with codecs.open(file_path, 'r', 'utf-8') as lines:
        for line in lines:
            if line==u'\n':
                pass;
            elif re.search(ur'#.+\n', line):
                surface_word_stack.append(u'\n');
            else:
                surface_word_stack.append( (line.strip(u'\n').split(u'\t')[1]).split(u'|')[0]+u' ' );
    return surface_word_stack; 

def from_json_file(file_path):
    surface_word_stack=[];
    with codecs.open(file_path, 'r', 'utf-8') as f:
        document_json=json.load(f);
    for sentence in document_json['sentence_set_list']:
        print sentence;
        plus_space_tokens=map(lambda x: x+u' ', sentence['after_conv_tokens']);
        surface_word_stack+=plus_space_tokens;
        surface_word_stack.append(u'\n');
    return surface_word_stack;

def main():
    parser=argparse.ArgumentParser(description='なにもなし');
    parser.add_argument('-m', '--mode', required=True, help='annotation or json');
    parser.add_argument('-i', '--inputfile', required=True, help='Input file path');
    args=parser.parse_args()

    if args.mode=='annotation':
        surface_word_stack=from_annotation_file(args.inputfile);
    elif args.mode=='json':
        surface_word_stack=from_json_file(args.inputfile);
    surface_dir_path='../test_corpus/surface_words/';    
    file_name=os.path.basename(args.inputfile);
    with codecs.open(surface_dir_path+file_name, 'w', 'utf-8') as f:
        f.writelines(surface_word_stack);

if __name__=='__main__':
    main();
