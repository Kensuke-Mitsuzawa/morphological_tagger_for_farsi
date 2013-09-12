#! /usr/bin/python
# -*- coding:utf-8 -*-
__author__="Kensuke Mitsuzawa"
__version__="2013/9/12"

import json, re, sys, codecs;

def separate_period(sentence):
        """
        This function separates period(dot) from sentence that its period is adhere to last word.The character format of input sentece must be unicode.
        """
        if re.findall(ur'\S,', sentence):
            sentence=sentence.replace(u',', u' ,');
        if re.findall(ur'\S?', sentence):
            sentence=sentence.replace(u'?', u' ?');
        
        return sentence;

def split_by_period(document):
    document_data=[];
    sentences=document.split(u'.');
    for i in sentences:
        i=separate_period(i);
        sentence_map={};
        tokens=i.split();
        sentence_map.setdefault('original', tokens);
        document_data.append(sentence_map); 
    return document_data;
if __name__=='__main__':
    document=codecs.open(sys.argv[1], 'r', 'utf-8').read();
    document_data=split_by_period(document);
    document_json=codecs.open(sys.argv[2], 'w', 'utf-8');
    json.dump(document_data, document_json, indent=4, ensure_ascii=False);
