#! /usr/bin/python
# -*- coding:utf-8 -*-

import re, codecs, sys;

#N2はNPのみに使われるので省略
#N5は基本的に全登録
def N_inf(lemma):
    write_line_stack=[];
    if lemma[-1] in [u'a', u'e', u'y', u'w']:
        write_line_stack.append(u'{}\tN5:v\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );
        write_line_stack.append(u'{}\tN12:v\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );
        write_line_stack.append(u'{}\tN15:v\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );

    if lemma[-1] not in [u'a', u'e', u'y', u'w']:
        write_line_stack.append(u'{}\tN5:c\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );
        write_line_stack.append(u'{}\tN12:c\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );
        write_line_stack.append(u'{}\tN15:c\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );

    if lemma[-1] in u'w':
        write_line_stack.append(u'{}\tN5:o\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );
        write_line_stack.append(u'{}\tN12:o\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );
        write_line_stack.append(u'{}\tN15:o\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );

    if lemma[-1]==u'e':
        write_line_stack.append(u'{}\tN6\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );

    if lemma[-1]==u't':
        write_line_stack.append(u'{}\tN8\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );

    if lemma[-1]==u'ź':
        write_line_stack.append(u'{}\tN14\t0;Lemma;N;;cat=N;%default\t#None\n'.format(lemma) );

    return write_line_stack;

if __name__=='__main__':
    f=codecs.open('../trunk/N.ilex', 'r', 'utf-8').readlines();
    f_w=codecs.open('../trunk/N.ilex', 'w', 'utf-8');
    lemma=sys.argv[1].decode('utf-8');
    write_line_stack=N_inf(lemma);

    for item in write_line_stack:
        f.append(item);

    for line in f:
        f_w.write(line);
    f_w.close();


