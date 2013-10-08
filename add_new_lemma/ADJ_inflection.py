#! /usr/bin/python
# -*- coding:utf-8 -*-

import re, codecs, sys;

#N2はNPのみに使われるので省略
#N5は基本的に全登録
def ADJ_inf(lemma):
    write_line_stack=[];
    if lemma[-1] in [u'a', u'e', u'y', u'w']:
        write_line_stack.append(u'{}\tADJ:v\t0;Lemma;ADJ;;cat=ADJ;%default\t#None\n'.format(lemma) );

    if lemma[-1] not in [u'a', u'e', u'y', u'w']:
        write_line_stack.append(u'{}\tADJ:c\t0;Lemma;ADJ;;cat=ADJ;%default\t#None\n'.format(lemma) );

    return write_line_stack;
if __name__=='__main__':
    f=codecs.open('../trunk/ADJ.ilex', 'r', 'utf-8').readlines();
    f_w=codecs.open('../trunk/ADJ.ilex', 'w', 'utf-8');
    lemma=sys.argv[1].decode('utf-8');
    write_line_stack=ADJ_inf(lemma);

    for item in write_line_stack:
        f.append(item);

    for line in f:
        f_w.write(line);
    f_w.close();


