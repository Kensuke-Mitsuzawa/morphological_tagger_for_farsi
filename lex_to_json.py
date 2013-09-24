#! /usr/bin/python
# -*- coding:utf-8
__author__='Kensuke Mitsuzawa';
__date__='2013/09/24';

import re, os, codecs, sys, glob, json;

def get_files(dir_name):
    lex_files=[];
    for root, dirs, files in os.walk(dir_name):
        for f in glob.glob(os.path.join(root, '*.lex.fixed')):
            lex_files.append(f);
    return lex_files;

def load_lex_file(f, after_inf_dictionary):
    input_lines=codecs.open(f, 'r', 'utf-8').readlines();
    for line in input_lines:
        tags=[];
        if re.findall(ur'\sinv\s', line):
            items=line.split(u'\t');
            after_inf_word=items[0]
            POS=items[2]
            stem=items[4]
            tag=u'inv'

        else:
            items=line.split(u'\t');
            after_inf_word=items[0]
            POS=items[2]
            stem=items[4]
            tag=items[6]
        extracted_information=(after_inf_word, POS, stem, tag);
        
        if after_inf_word in after_inf_dictionary:
            after_inf_dictionary[after_inf_word].append(extracted_information); 
        else:
            tags.append(extracted_information);
            after_inf_dictionary.setdefault(after_inf_word, tags);
   
        #for V, delete ZWNJ and add to hash map
        if re.findall(ur'_' , after_inf_word) and f=='./trunk/V.lex.fixed':
            tags=[];
            after_inf_word=(after_inf_word.replace(u'_', u''))
            POS=items[2]
            stem=items[4]
            tag=(items[6]+u'_no_zwnj')
            extracted_information=(after_inf_word, POS, stem, tag);
            if after_inf_word in after_inf_dictionary:
                after_inf_dictionary[after_inf_word].append(extracted_information); 
            else:
                tags.append(extracted_information);
                after_inf_dictionary.setdefault(after_inf_word, tags);

    return after_inf_dictionary;

def main():
    dir_path='./trunk';
    after_inf_dictionary={};
    lex_files=get_files(dir_path);
    #lex_files=['./trunk/V.lex.fixed'];
    for f in lex_files:
        after_inf_dictionary=load_lex_file(f, after_inf_dictionary);
    with codecs.open('lex_json', 'w', 'utf-8') as f:
        json.dump(after_inf_dictionary, f, indent=4, ensure_ascii=False)


if __name__=='__main__':
    main();
