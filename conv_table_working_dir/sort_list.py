#! /usr/bin/python
#-*- coding:utf-8 -*-

import codecs, sys;

table_map={};
with codecs.open(sys.argv[1], 'r', 'utf-8') as input_lines:
    for line in input_lines:
        if line[0]==u'#' or line[0]==u'!':
            pass
        else:
            items=line.split(u'\t');
            sentence_id=int(items[0]);
            values=items[1:-1];

            if sentence_id in table_map:
                table_map[sentence_id].append(values);
            else:
                table_map[sentence_id]=[values];

sorted_file=codecs.open(sys.argv[1]+'.sorted', 'w', 'utf-8');
for k, v in sorted(table_map.items()):
    for value in v:
        sorted_file.write(u'{}\t{}\n'.format(k, u'\t'.join(value)) );

sorted_file.close();
