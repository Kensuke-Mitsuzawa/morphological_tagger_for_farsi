#! /usr/bin/python
#-*- coding:utf-8 -*-

import codecs, re, json;

table_map={};
with codecs.open('conv_table_working_dir/file_in_progress/manual_editing_3rd_run.tsv', 'r', 'utf-8') as table_lines:
    for line in table_lines:
        if line[0]==u'#' or line[0]==u'!':
            pass
        else:
            items=line.strip(u'\n').split(u'\t');
            
            converting_list=[];
            sent_no=int(items[0]);
            orig_word=items[1];
                
            converting_list.append(sent_no);
            converting_list.append(orig_word);

            for i in range(0, len(items)-3):
                if i==0 or i%2==0:
                    after_persian=items[2+i];
                else:
                    after_japn=items[2+i];
                    converting_list.append( (after_persian, after_japn) );
            
            if sent_no in table_map:
                table_map[sent_no].append(converting_list);
            else:
                table_map.setdefault(sent_no, [converting_list]);




corpus_json=codecs.open('test_corpus/json/e1998t0001.xml', 'r', 'utf-8');
corpus=json.load(corpus_json);

for sentence in corpus:
    if sentence['sentence_id'] in table_map:
        patch_data_list=table_map[sentence['sentence_id']];
        replaced_sentence=sentence['roman_sentence'];
        for patch_data in patch_data_list:
            patch_after_word=u'';
            patch_orig_word=patch_data[1];
            for i in range(0, len(patch_data)-2):
                patch_after_word+=(patch_data[i+2][0]+u' ');
                patch_after_word=patch_after_word.strip();

            replaced_sentence=re.sub(patch_orig_word, patch_after_word, replaced_sentence);

        sentence.setdefault(u'after_conv_sentence', replaced_sentence);
        
        replaced_tokens=replaced_sentence.split();
        sentence.setdefault(u'after_conv_tokens', replaced_tokens);

    else:
        pass;


with codecs.open('test_corpus/json_after_conv_table/e1998t0001.xml', 'w', 'utf-8') as f:
    json.dump(corpus, f, indent=4, ensure_ascii=False);
