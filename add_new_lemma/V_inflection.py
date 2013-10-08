#! /usr/bin/python
# -*- coding:utf-8 -*-

import re, codecs, sys;

def V_inf(lemma_orig):
    write_line_stack=[];
    lemma=lemma_orig.rstrip(u'n');

    if re.findall(ur'.*yd', lemma):
        write_line_stack.append(u'{}\tv1\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*[nr]d', lemma): 
        write_line_stack.append(u'{}\tv2\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*rd', lemma): 
        write_line_stack.append(u'{}\tv3\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*ad', lemma): 
        write_line_stack.append(u'{}\tv4\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*ad', lemma): 
        write_line_stack.append(u'{}\tv5\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*wd', lemma): 
        write_line_stack.append(u'{}\tv6\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*(z|..*y)d', lemma): 
        write_line_stack.append(u'{}\tv7\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*xt', lemma): 
        write_line_stack.append(u'{}\tv8\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*št', lemma): 
        write_line_stack.append(u'{}\tv9\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv10\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv11\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*st', lemma): 
        write_line_stack.append(u'{}\tv12\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv13\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv14\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv15\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv16\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv17\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*ft', lemma): 
        write_line_stack.append(u'{}\tv18\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv19\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv20\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv21\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*[dt]', lemma): 
        write_line_stack.append(u'{}\tv22\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv23\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv24\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*bwd', lemma): 
        write_line_stack.append(u'{}\tv25\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*dašt', lemma): 
        write_line_stack.append(u'{}\tv26\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'.*xwast', lemma): 
        write_line_stack.append(u'{}\tv27\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    if re.findall(ur'..*', lemma): 
        write_line_stack.append(u'{}\tv28\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );
        write_line_stack.append(u'{}\tv29\t0;Lemma;V;;cat=V;%default\t# manually added\n'.format(lemma_orig) );

    return write_line_stack;

if __name__=='__main__':
    f=codecs.open('../trunk/V.ilex', 'r', 'utf-8').readlines();
    f_w=codecs.open('../trunk/V.ilex', 'w', 'utf-8');
    lemma=sys.argv[1].decode('utf-8');
    write_line_stack=V_inf(lemma);

    for item in write_line_stack:
        f.append(item);

    for line in f:
        f_w.write(line);
    f_w.close();


