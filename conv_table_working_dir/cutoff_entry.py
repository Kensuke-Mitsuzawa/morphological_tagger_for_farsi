#! /usr/bin/python
# -*- coding:utf-8 -*-
"""
以下の二つのいずれかの場合に対応表から項目を削除
1見出し語と変換後が同じ場合
2見出し語がperlexに載っており，かつそのlemmaもperlexにlemmaとして掲載されている場合．

ただし，2の場合であっても動詞であればZWNJつなぎに変更する
出力は，入力ファイルのパスと同一場所．２つのファイルを出力する．残した項目と削除した項目
"""

import argparse, sys, json, codecs, re;

def load_perlex(perlex_path):
    with codecs.open(perlex_path, 'r', 'utf-8') as f:
        perlex_dic=json.load(f);
    return perlex_dic;

def cutoff_same_entry(line):
    #if not line[0]==u'!' or line[0]==u'#':
    try:
        line_items=line.strip(u'\n').split(u'\t');
        before_column=line_items[1].strip();
        after_column=line_items[2].strip();
        if before_column==after_column:
            return True;
        else:
            return False;
    #else:
    except IndexError:
        return False;

def cutoff_entry_in_perlex(line, perlex_dic):
    #if not line[0]==u'!' or line[0]==u'#':
    try:
        line_items=line.strip(u'\n').split(u'\t');
        before_column=line_items[1].strip();
        after_column=line_items[2].strip();
        
        if before_column in perlex_dic:
            matched_entries=perlex_dic[before_column];
            lemma_match_flag=False;
            #対応表の元の形がperlex辞書に存在し，その時のエントリのlemma項目も対応表の変換後の形と一致していたら，削除の対象とする
            for each_entry in matched_entries:
                lemma_in_perlex=re.sub(ur'(.*[^_])_*[1-9]', ur'\1', each_entry[2]);
                lemma_in_perlex=lemma_in_perlex.strip(ur'___MTE')
                if after_column==lemma_in_perlex:
                    lemma_match_flag=True;
                    if each_entry[1]=='V' and re.search(ur'my.+', before_column):
                        correct_after_column=before_column.replace(u'my', u'my_');
                        line_items[2]=correct_after_column;
                        return line_items;

                    elif each_entry[1]=='V' and re.search(ur'nmy.+', before_column):
                        correct_after_column=before_column.replace(u'nmy', u'nmy_');
                        line_items[2]=correct_after_column;
                        return line_items;
                    
                    else:
                        return True;

    except IndexError:
        return False;

def main():
    perlex_path='../lex_json';
    perlex_dic=load_perlex(perlex_path)
    deleted_stack=[];
    remained_stack=[];

    filepath=sys.argv[1];
    with codecs.open(filepath, 'r', 'utf-8') as lines:
        for line in lines:
            #もし対応表の元と後が一緒でなかったら
            if cutoff_same_entry(line)==False:
                remained_stack.append(line);
                decision_result=cutoff_entry_in_perlex(line, perlex_dic);
                #本当はこの実装は良くないんだけど．．．
                if decision_result==False: 
                    remained_stack.append(line);
                elif isinstance(decision_result, list):
                    remained_stack.append(u'\t'.join(decision_result));
                #一応，削除した項目も記録しておく
                else:
                    deleted_stack.append(line);
            #一応，削除した項目も記録しておく
            else:
                deleted_stack.append(line);

    with codecs.open(filepath+'.remained', 'w', 'utf-8') as f:
        f.writelines(remained_stack);
    with codecs.open(filepath+'.deleted', 'w', 'utf-8') as f:
        f.writelines(deleted_stack);

if __name__=='__main__':
    main();
