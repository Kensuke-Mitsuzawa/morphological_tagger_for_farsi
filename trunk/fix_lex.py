#! /usr/bin/python
#-*- coding:utf-8 -*-

__author__='Kensuke Mitsuzawa'
__date__='2013/09024'

"""
This code fix the mistakes in Perlex lexicon.
In the perlex lexicon, there is lex file which has inflected form of all words. However these files have wrong characters which seems bug.
This code replace such mistaken character.

Usage:Python fix_lex.py lex_file_path fixed_lex_path
"""


import sys, codecs, re;

file_path=sys.argv[1];
file_out_path=file_path+'.fixed';

f=codecs.open(file_out_path, 'w', 'utf-8');

with codecs.open(file_path, 'r', 'latin_1') as lines:

    for line in lines:
        
        error_line=line;

        if re.findall(ur'\xb9', error_line):
            error_line=error_line.replace(u'\xb9', u'š');

        if re.findall(ur'\xba', error_line):
            error_line=error_line.replace(u'\xba', u'ş');

        if re.findall(ur'\xbc', error_line):
            error_line=error_line.replace(u'\xbc', u'ź');

        if re.findall(ur'\xbf', error_line):
            error_line=error_line.replace(u'\xbf', u'ẓ');

        if re.findall(ur'\xbe', error_line):
            error_line=error_line.replace(u'\xbe', u'ž');

        if re.findall(ur'\xfe', error_line):
            error_line=error_line.replace(u'\xfe', u'ţ');

        if re.findall(ur'\xb3', error_line):
            error_line=error_line.replace(u'\xb3', u'ħ');

        if re.findall(ur'â', error_line):
            error_line=error_line.replace(u'â', u'ā');

        if re.findall(ur'ð', error_line):
            error_line=error_line.replace(u'ð', u'đ');

        if re.findall(ur'è', error_line):
            error_line=error_line.replace(u'è', u'č');


        f.write(error_line);


f.close();

