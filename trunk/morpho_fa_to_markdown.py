#! /usr/bin/python
# -*- coding:utf-8 -*-

import codecs, re;

tuple_stack=[];
out_f=codecs.open('markdown_format.md', 'w', 'utf-8');

with codecs.open('__morpho.fa__', 'r', 'utf-8') as input_lines:
    for line in input_lines:
        if re.findall(ur'<form .*>', line):
            if re.findall(ur'prefix=".+" suffix=".+" tag=".+"', line):
                pattern=re.compile(ur'prefix=(".+") suffix=(".+") tag=(".+")');
                result=pattern.search(line);

                prefix=result.group(1).strip(u'"');
                suffix=result.group(2).strip(u'"');
                tag=result.group(3).strip(u'"');
                format_tuple=(tag, prefix, suffix);

                tuple_stack.append(format_tuple);
            
            elif re.findall(ur'suffix=".+" tag=".+"', line):
                pattern=re.compile(ur'suffix=(".+") tag=(".+")');
                result=pattern.search(line);

                suffix=result.group(1).strip(u'"');
                tag=result.group(2).strip(u'"');
                format_tuple=(tag, u'ø', suffix);

                tuple_stack.append(format_tuple);

        elif re.findall(ur'table name=".+" canonical_tag=".+" rads=".+"', line):
            pattern=re.compile(ur'<table name=(".+") canonical_tag=".+"');
            result=pattern.search(line);

            table_name=result.group(1).strip(u'"');

            tuple_stack.append(table_name);

        else:
            pass;


head_format=u'| tag | prefix | suffix |\n|:-----:|:-----:|:-----:|\n';
for item in tuple_stack:

    if type(item)==unicode:
        out_f.write(u'\n')
        out_f.write(head_format);
        out_format=u'|{0}| | |\n'.format(item);
        out_f.write(out_format);

    elif len(item)==3:
        out_format=u'| {0} | {1} | {2} |\n'.format(item[0], item[1], item[2]);
        out_f.write(out_format);

    else:
        print 'error'



