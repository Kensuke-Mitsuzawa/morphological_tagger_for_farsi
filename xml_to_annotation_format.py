#! /usr/bin/python
# -*- coding:utf-8 -*-

import sys, codecs, json, re, os;
import xml.dom.minidom;

#すでに途中までアノテーションしてしまったコーパスのために書いた
#これ以上はあまり使う機会はないと思う．

def load_xml_corpus(xml_path):
    dom=xml.dom.minidom.parse(xml_path);
    sentence_node=dom.getElementsByTagName(u'instance')

    return sentence_node;

def generate_format(sentence_node):

    format_stack=[];
    
    for node in sentence_node:
        for child in node.childNodes: 
            if child.nodeName==u'document':
                for sentences in child.childNodes:
                    if sentences.nodeName==u'sentence':
                        sentence_id=int(sentences.getAttribute(u'sentence_id'));
                        format_stack.append(u'#newsentece'+str(sentence_id)+u'\n');
                        for element_node in sentences.childNodes:
                            if element_node.nodeName==u'token_replaced':
                                for position_node in element_node.childNodes:
                                    if re.findall(ur'position', position_node.nodeName):
                                        token_id=position_node.nodeName;
                                        token_id=token_id.replace(u'position_', u'')

                                        token=u''; pos=u''; stem=u''; morph=u''; category=u'';
                                        tag_stack=[];

                                        for tag_node in position_node.childNodes:
                                            if re.findall(ur'token', tag_node.nodeName):
                                                token=(tag_node.childNodes[0].data).strip();
                                                token_tags=token.split();

                                            if re.findall(ur'pos', tag_node.nodeName):
                                                pos=(tag_node.childNodes[0].data).strip();
                                                pos_tags=pos.split();

                                            if re.findall(ur'stem', tag_node.nodeName):
                                                stem=(tag_node.childNodes[0].data).strip();
                                                stem_tags=stem.split();

                                            if re.findall(ur'morph', tag_node.nodeName):
                                                try:
                                                    morph=(tag_node.childNodes[0].data).strip();
                                                    morph_tags=morph.split();
                                                except IndexError:
                                                    morph=None;

                                            if re.findall(ur'category', tag_node.nodeName):
                                                category=(tag_node.childNodes[0].data).strip();
                                                category_tags=category.split();
                                        
                                        annotation_format=u'{0}@{1}\t{2},{3},{4},{5},{6}\n'\
                                                .format(token_id, sentence_id, token, pos, stem, morph, category); 
                                        format_stack.append(annotation_format);
                                        format_stack.append(u'\n');
            
    return format_stack;
 

def main():
    corpus_path=sys.argv[1]
    file_name=os.path.split(corpus_path)[-1].replace('.xml', '.annotation');
    out_f=codecs.open('./test_corpus/annotation_format/'+file_name, 'w', 'utf-8');

    corpus=load_xml_corpus(corpus_path);
    format_stack=generate_format(corpus);

    for item in format_stack:
        out_f.write(item);
    out_f.close();

if __name__=='__main__':
    main();
