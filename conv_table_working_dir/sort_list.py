#! /usr/bin/python
#-*- coding:utf-8 -*-
__author__='Kensuke Mitsuzawa';
__date__='2013/11/09';

"""
もらってきたデータは文の番号順がバラバラなので，若い順にソートする．
"""

import codecs, sys, argparse;
parser=argparse.ArgumentParser();
parser.add_argument('-i', '--inputfile', required=True);
parser.add_argument('-r', '--reverse', default=False, action='store_true');
args=parser.parse_args();

print 'Reverse mode is:{}'.format(args.reverse);
table_map={};
with codecs.open(args.inputfile, 'r', 'utf-8') as input_lines:
    for line in input_lines:
        if line[0]==u'#' or line[0]==u'!':
            pass
        else:
            items=line.split(u'\t');
            sentence_id=int(items[0]);
            values=items[1:-1];
            #======================================== 
            #なぜか対応表が右から左になっていることがあって（おそらくアラビア文字の性質から右から要素を分け始めたのだろう），それに対応するためのコード
            if args.reverse==True:
                inverse_list=[];
                #変換対象語
                original_word=items[1];
                #変換後の語列
                replace_values=items[2:-1];
                #とりあえず日本語とペルシア語のペアを作成する
                for i, element in enumerate(replace_values):
                    #０番目と２で割れるインデックスはペルシア語がくるはず
                    if i==0 or i%2==0:
                        persian_word_stack=[];   
                        if not element==u'':
                            persian_word_stack.append(element);
                    #１番目と２で割って１あまる数は日本語がくるはず
                    elif i==1 or i%2==1:
                        if not element==u'':
                            persian_word_stack.append(element);
                            inverse_list.append(persian_word_stack);
                    #リストを反転させる
                reversed_list=inverse_list[::-1];
                new_reversed_list=[];
                for reversed_item in reversed_list: new_reversed_list+=reversed_item;
                #for reversed_item in reversed_list:
                #    concatenated_item=u'\t'.join(reversed_item)
                #    new_reversed_list.append(concatenated_item); 
                values=[(original_word).strip()]+new_reversed_list;
            #======================================== 
            if sentence_id in table_map:
                table_map[sentence_id].append(values);
            else:
                table_map[sentence_id]=[values];

sorted_file=codecs.open(args.inputfile+'.sorted', 'w', 'utf-8');
for k, v in sorted(table_map.items()):
    for value in v:
        #print [u'{}\t{}\n'.format(k, u'\t'.join(value))]
        sorted_file.write(u'{}\t{}\n'.format(k, u'\t'.join(value)) );

sorted_file.close();
