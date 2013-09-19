#! /usr/bin/python
#-*- coding:utf-8 -*-

__author__='Kensuke Mitsuzawa';
__date__='2013/09/19';

import sys, codecs, json, re;

#このコードの目的：perlexのタグがついたjsonファイルを対象に，tagがひとつだけの時と，タグが複数またはタグがつかなかった時，に分ける．tagがついた時は，機械的に処理をして見出し語と正規化後の形態素が同じする．タグがつかなかったまたはタグが複数の時は，手作業を行うために，tsvに出力する

with codecs.open('./table_json', 'r', 'utf-8') as f:
    table_map=json.load(f);

with codecs.open('../lex_json', 'r', 'utf-8') as f:
    lex_map=json.load(f);

one_tag_cache=[];
tsv_cahce=[];
for entry in table_map:
    value_items=table_map[entry];
    for value_item in value_items:
        if len(value_item['lex_information'])==1:
            one_tag_cache.append(value_item);
        else:
            tsv_cahce.append(value_item);

#tsvファイルに書き出し処理
tsv_f=codecs.open('need_manual_work.tsv', 'w', 'utf-8');
for item in tsv_cahce:
    format_cache=[];
    format_cache.append(str(item['sentence_id']));
    format_cache.append(item['orig_persian_roman']);
    format_cache.append(item['norm_persian_roman']);
    format_cache.append(item['mean_persian']);
    format_cache.append(item['norm_persian_2_roman']);
    format_cache.append(item['mean_persian_2']);
    format_cache.append(item['norm_persian_3_roman']);
    format_cache.append(item['mean_persian_3']);
    format_cache.append(item['norm_persian_4_roman']);
    format_cache.append(item['mean_persian_4']);
    out_format=u'\t'.join(format_cache);
    tsv_f.write(out_format+u'\n');

tsv_no_need=codecs.open('no_need_work', 'w', 'utf-8');
for item in one_tag_cache:

    if re.findall(ur'Fam', item[u'lex_information'][0][-1]):
        lex_tag=item[u'lex_information'][0][-1].replace(u'Fam', u'');
        if re.findall(ur'3sgPreInd',lex_tag):
            lex_tag=u'2*'+lex_tag;
        
        lex_stem=item[u'lex_information'][0][1];
        lex_pos=item[u'lex_information'][0][0];
        lex_information_tuple=(lex_pos, lex_stem, lex_stem);

        for k in lex_map:
            for item in lex_map[k]:
                if item[1]==lex_pos and\
                   item[2]==lex_stem and\
                   item[3]==lex_tag:
                    print item;

                    #とりあえず，この段階で口語から，文語体の表層形（形態素は同じ）が得られている．なので，次は，ファイルに書き出す時にどうするか？の問題
