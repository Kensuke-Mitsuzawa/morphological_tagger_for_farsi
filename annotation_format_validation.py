#! /usr/bin/python
# -*- coding:utf-8 -*-

import sys, codecs, re, os;

def index_checker(lines):
    lines_stack=[];
    sentence_id_line_before=0;
    token_counter=0;

    duplicate_flag=False;
    for line_index, line in enumerate(lines):
        if line[0]==u'#' or line==u'\n' or line==u'!end\n':
            lines_stack.append(line);
            duplicate_flag=False;

        else:
            if duplicate_flag==True:
                print (u'Warning!Taged line is duplicated. \n{}\n{}{}\n{}'.format(line_index-1,\
                                                                                  lines[line_index-1],\
                                                                                  line_index,\
                                                                                  line) ).encode('utf-8');
            items=line.split(u'\t');
            token_sentence_index=items[0];
            token_sentence_items=token_sentence_index.split(u'@');
            sentence_id=int(token_sentence_items[1]);

            if sentence_id_line_before!=sentence_id:
                token_counter=0;
                sentence_id_line_before=sentence_id;
            else:
                pass;
            
            token_index=int(token_sentence_items[0]);

            if token_counter!=token_index:
                new_index_label=u'{}@{}'.format(token_counter, token_sentence_items[1]);
                new_line=u'{}\t{}'.format(new_index_label, items[1]);
                
                token_counter+=1;
                #print "{} is replaced to {}".format(token_index-1, token_counter);
                #print new_line;

                lines_stack.append(new_line);

            else:
                token_counter+=1;
                lines_stack.append(line);

            duplicate_flag=True;


    return lines_stack;

def annotated_check(lines):
    for i, line in enumerate(lines):
        if line[0]==u'#' or line==u'\n' or line==u'!end\n':
            pass
        
        else: 
            annotated_area=line.strip(u'\n').split(u'\t')[1];
            tag_items=annotated_area.split(u'|');

            if len(tag_items)!=7:
                print 'No correct annotation found!\n{} : {}'.format(i, line.encode('utf-8'));
            for tag in tag_items:
                if re.findall(ur'\s', tag):
                    print ('No correct annotation found!\n{}\nline number {}\n{}\n'.format([tag], i, [line]));

def main():
    annotated_file_lines=codecs.open(sys.argv[1], 'r', 'utf-8').readlines();
    lines_stack=index_checker(annotated_file_lines);

    annotated_check(lines_stack);

    file_name=os.path.split(sys.argv[1])[-1];
    if re.findall(ur'\.validated', file_name):
        file_name=file_name.replace(u'.validated', u'');
    out_f=codecs.open('./test_corpus/manual_edit_progress/validated/'+file_name+u'.validated', 'w', 'utf-8');
    for line in lines_stack:
        out_f.write(line);
    out_f.close();
    

if __name__=='__main__':
    main();
        
    


