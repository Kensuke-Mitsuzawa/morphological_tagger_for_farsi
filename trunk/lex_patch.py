#! /usr/bin/python
#-*- coding:utf-8 -*-

import codecs, re;

V_lex=codecs.open('V.lex.fixed', 'r', 'utf-8').read();
V_out=codecs.open('V.lex.fixed', 'w', 'utf-8');

#You can write Path inflections from here

bya_rule=u'byā   208     V       [pred="āmdn_____1",cat=V,@imperNorm] āmdn_____1      Default ImperNorm    %default        v24:v\n'
V_lex+=bya_rule;

V_out.write(V_lex)
