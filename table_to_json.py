#! /usr/bin/python
#-*- coding:utf-8 -*-
import codecs, sys, re, json;
sys.path.insert(0, './Python_virastar');
from translitr import transliter 

table_map={};
with codecs.open('./new_corpus_data/folklore_goftari_converting_table.tsv',
                 'r',
                 'utf-8') as input_lines:
    for i, line in enumerate(input_lines):
        one_column_map={};
        one_column_map_list=[];

        if i==0:
            pass
        elif i==4120:
            break;
        else:
            items=line.split(u'\t');
            sentence_id=int(items[1]);
            orig_persian=items[2];
            orig_persian_roman=(transliter(orig_persian)).arabic_to_unicode();
            norm_persian=items[3];
            norm_persian_roman=(transliter(norm_persian)).arabic_to_unicode();
            norm_persian_2=items[5];
            norm_persian_2_roman=(transliter(norm_persian_2)).arabic_to_unicode();
            norm_persian_3=items[7];
            norm_persian_3_roman=(transliter(norm_persian_3)).arabic_to_unicode();
            norm_persian_4=items[9];
            norm_persian_4_roman=(transliter(norm_persian_4)).arabic_to_unicode();
            mean_persian=items[4];
            mean_persian_2=items[6];
            mean_persian_3=items[8];
            mean_persian_4=items[10];
             
            one_column_map.setdefault('sentence_id' ,sentence_id);
            one_column_map.setdefault('orig_persian', orig_persian);
            one_column_map.setdefault('norm_persian', norm_persian);
            one_column_map.setdefault('norm_persian_2', norm_persian_2);
            one_column_map.setdefault('norm_persian_3', norm_persian_3);
            one_column_map.setdefault('norm_persian_4', norm_persian_4);
            
            one_column_map.setdefault('orig_persian_roman', orig_persian_roman);
            one_column_map.setdefault('norm_persian_roman', norm_persian_roman);
            one_column_map.setdefault('norm_persian_2_roman', norm_persian_roman);
            one_column_map.setdefault('norm_persian_3_roman', norm_persian_roman);
            one_column_map.setdefault('norm_persian_4_roman', norm_persian_roman);

            one_column_map_list.append(one_column_map);
           
            table_map.setdefault(sentence_id, one_column_map_list);

with codecs.open('table_json', 'w', 'utf-8') as table_map_json:
    json.dump(table_map, table_map_json, indent=4, ensure_ascii=False);
           
           





