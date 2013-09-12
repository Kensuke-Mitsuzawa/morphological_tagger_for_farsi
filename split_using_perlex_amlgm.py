#! /usr/bin/python
#-*- coding:utf-8 -*-

import codecs, sys, re, subprocess;

def load_amlgm():
    before_after_dic={};
    input_lines=open('./trunk/amlgm', 'r').readlines();
    for line in input_lines:
        try:
            line=unicode(line, 'utf-8');
            items=line.split(u'\t');
            print items
            before=items[0];
            after=items[1].strip(u'\n');
            extracted_information=(before, after);
            before_after_dic.setdefault(before, extracted_information);
        except UnicodeDecodeError:
            pass;
    return before_after_dic;

def do_split(before_after_dic, target_doc):
    backup_path=sys.argv[1]+u'_replaced'; 
    subprocess.Popen(['cp', sys.argv[1], backup_path]);
    
    for entry in before_after_dic:
        value=before_after_dic[entry][1];
        sed_cmd=u's/{}/{}/g'.format(entry, value);
        sed=subprocess.Popen(['sed', '-i', '-e', sed_cmd, backup_path], stdout=subprocess.PIPE);

def main():
    before_after_dic=load_amlgm();
    target_doc=codecs.open(sys.argv[1], 'r', 'utf-8').read();
    do_split(before_after_dic, target_doc);

if __name__=='__main__':
    main();
