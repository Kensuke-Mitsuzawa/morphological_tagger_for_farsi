#! /usr/bin/python
#-*- coding:utf-8 -*-

__author__='Kensuke Mitsuzawa';
__date__='2013/09/29';

from xml.etree.ElementTree import Element, SubElement, Comment, tostring
from xml.etree import ElementTree
from xml.dom import minidom
import codecs, re, json;

def prettify(elem):
    """Return a pretty-printed XML string for the Element.
    """
    rough_string = ElementTree.tostring(elem, 'utf-8')
    reparsed = minidom.parseString(rough_string)
    return reparsed.toprettyxml()


def load_corpus_json(corpus_path):
    with codecs.open(corpus_path, 'r', 'utf-8') as f:
        corpus=json.load(f);
    return corpus;

def generate_xml(corpus):

    top=Element('instance');

    #comment = Comment('Generated for PyMOTW')
    #top.append(comment)

    child=SubElement(top, 'resource_data');

    res_no=SubElement(child, 'resource_no');
    res_no.text='Null';

    res_title=SubElement(child, 'resource_title');
    res_title.text='Null'

    res_title_jpn=SubElement(child, 'resource_title_jpn');
    res_title_jpn.text='Null';

    res_category=SubElement(child, 'resource_category');
    res_category.text='Null';

    res_AT=SubElement(child, 'AT_index');
    res_AT.text='Null';

    res_position=SubElement(child, 'record_position');
    res_position.text='Null';

    res_period=SubElement(child, 'record_period');
    res_period.text='Null';

    res_date=SubElement(child, 'resource_date');
    res_date.text='Null';

    res_location_per=SubElement(child, 'resource_location_per');
    res_location_per.text='Null';

    res_location_jpn=SubElement(child, 'res_location_jpn');
    res_location_jpn.text='Null';

    speaker_info=SubElement(top, 'speaker_information');

    age=SubElement(speaker_info, 'age');
    age.text='Null';

    sex=SubElement(speaker_info, 'sex');
    sex.text='Null';

    source_per=SubElement(speaker_info, 'source_per');
    source_per.text='Null';

    source_jpn=SubElement(speaker_info, 'source_jpn');
    source_jpn.text='Null';

    document=SubElement(top, 'document');

    for sentence in corpus:

        sentence_id=str(sentence[u'sentence_id']);
        sentence_node=SubElement(document, 'sentence');
        sentence_node.set('sentence_id', sentence_id);

        jpn_sentence=SubElement(sentence_node, 'jpn_sentence');
        jpn_sentence.text=sentence['jpn_sentence'];

        per_sentence=SubElement(sentence_node, 'per_sentence');
        per_sentence.text=sentence['persian_sentence'];

        roman_sentence=SubElement(sentence_node, 'roman_sentence');
        roman_sentence.text=sentence['roman_sentence'];

        roman_sentence_replaced=SubElement(sentence_node, 'roman_sentence_replaced');
        roman_sentence_replaced.text=sentence['after_conv_sentence']

        """
        token_before=SubElement(sentence_node, 'token_before');
        for i, token in enumerate(sentence['tokens']):
            token_i=SubElement(token_before, 'token_{}'.format(i));
            token_i.text=token;
            """

        token_after=SubElement(sentence_node, 'token_replaced');
        for i, token in enumerate(sentence['after_conv_tokens']):
            position_node=SubElement(token_after, 'position_{}'.format(i));

            token_i=SubElement(position_node, 'token_{}'.format(i));
            token_i.text=token

            pos_i=SubElement(position_node, 'pos_{}'.format(i));
            if sentence['pos_perlex'][i]!=[None]:
                format_pos=u' '.join(sentence['pos_perlex'][i]);
                pos_i.text=format_pos;
            else:
                pos_i.text='null';

            stem_i=SubElement(position_node, 'stem_{}'.format(i));
            if sentence['stem'][i]!=[None]:
                format_stem=u' '.join(sentence['stem'][i]);
                stem_i.text=format_stem;
            
            else:
                stem_i.text='null';

            morph_i=SubElement(position_node, 'morph_{}'.format(i));
            if sentence['morph_tag'][i]!=[None]:
                format_morph=u' '.join(sentence['morph_tag'][i]);
                morph_i.text=format_morph;

            else:
                morph_i.text='null';

    xml_data=prettify(top)
    with codecs.open('./test_corpus/xml/taged.xml', 'w', 'utf-8') as f:
        f.write(xml_data);


def main():
    corpus_path='./taged.json'

    corpus=load_corpus_json(corpus_path)

    generate_xml(corpus);

if __name__=='__main__':

    main();
