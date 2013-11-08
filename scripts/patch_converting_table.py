#! /usr/bin/python
#-*- coding:utf-8 -*-
__version__='2';
__date__='2013/10/30';

import codecs, re, json, os, sys;

table_map={};
with codecs.open('../conv_table_working_dir/file_done/manual_editing_4th_run', 'r', 'utf-8') as table_lines:
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




corpus_path=sys.argv[1];
corpus_json=codecs.open(corpus_path, 'r', 'utf-8');
corpus=json.load(corpus_json);

#この行がversion1と2でことなっている
#for sentence in corpus['sentence_set_list']:
#version2用
for sentence in corpus['sentence_set_list']:
    if sentence['sentence_id'] in table_map:
        patch_data_list=table_map[sentence['sentence_id']];
        replaced_sentence=sentence['roman_sentence'];
        for patch_data in patch_data_list:
            patch_after_word=u'';
            patch_word_stack=[];
            patch_orig_word=patch_data[1];
            for i in range(0, len(patch_data)-2):
                if patch_data[i+2][0]!=u'':
                    patch_word_stack.append((patch_data[i+2][0]).strip());
                else:
                    pass;

            patch_after_word=u' '.join(patch_word_stack);
            replaced_sentence=re.sub(patch_orig_word, patch_after_word, replaced_sentence);

        sentence.setdefault(u'after_conv_sentence', replaced_sentence);
        
        replaced_tokens=replaced_sentence.split();
        sentence.setdefault(u'after_conv_tokens', replaced_tokens);

    else:
        pass;


file_name=os.path.split(corpus_path)[-1];
#with codecs.open('./test_corpus/json_after_conv_table/'+file_name, 'w', 'utf-8') as f:
with codecs.open('../test_corpus/json_after_conv_table_2nd_version/'+file_name, 'w', 'utf-8') as f:
    json.dump(corpus, f, indent=4, ensure_ascii=False);
