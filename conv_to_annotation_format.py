#! /usr/bin/python
# -*- coding:utf-8 -*-
"""
タグ付けされたコーパスをアノテーションしやすいフォーマットに変換する．
ARGS: test_corpus/taged_corpus/コーパス名

OUT: test_corpus/annotation_format/コーパス名
"""
__date__='2013/10/14'
__author__='Kensuke-mi'

import sys, codecs, json, os;

def load_taged_corpus(corpus_path):
    with codecs.open(corpus_path, 'r', 'utf-8') as f:
        corpus=json.load(f);
        
    return corpus;

def generate_format(corpus):
    format_stack=[];
    for sentence in corpus:
        sentence_id=str(sentence[u'sentence_id']);
        format_stack.append(u'#new sentence{}\n'.format(sentence_id));

        for i, token in enumerate(sentence[u'after_conv_tokens']):
            if sentence['pos_perlex']!=[None]:
                for ii, pos in enumerate(sentence[u'pos_perlex'][i]):
                    category=sentence[u'category'][i][ii];
                    morph=sentence[u'morph_tag'][i][ii];
                    stem=sentence[u'stem'][i][ii];
                    inflection=sentence[u'inflection'][i][ii];

                    annotation_format=u'{0}@{1}\t{2}|{3}|{4}|{5}|{6}|{7}|\n'\
                            .format(i, sentence_id, token, pos, stem, morph, category, inflection);
                    format_stack.append(annotation_format);
            
            format_stack.append(u'\n')
        
    return format_stack;
    
def main():
    corpus_path=sys.argv[1];
    file_name=os.path.split(corpus_path)[-1].replace('.xml', '.annotation');
    out_f=codecs.open('./test_corpus/annotation_format/'+file_name, 'w', 'utf-8');

    corpus=load_taged_corpus(corpus_path);
    format_stack=generate_format(corpus);

    for item in format_stack:
        out_f.write(item);
    out_f.close();

if __name__=='__main__':
    main();
