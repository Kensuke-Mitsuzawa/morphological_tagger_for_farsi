# Morphological tagger for farsi
#### In the name of Allah

- - -

# what's this?

This is a morphological tagger for farsi(Persian) language. 

To construct tagger, I use __perlex__ lexicon. To know more about perlex lexicon, please refer following paper. [A Morphological Lexicon for the Persian Language](alpage.inria.fr/~sagot/pub/lrec10perlex.pdf)

This tagger is completely lexicon base. Thus, the output of this tagger has ambiguity. You have to edit the best tagged information from candidates. Also, this tagger usually fail to tag to input because the token does not exist in perlex lexicon. In that case, you have to edit yourself.

- - -

# How to use


First of all, you need to create lexicon.json file from perlex database. This json file is more than 100MB, so this repository does not contain lexicon.json file. You have to create youself. To create lexicon.json, please execute following command,

````
cd scripts/  
python lex_to_json.py
````

This script will take a lot of time(depends on machine spec).

Next, you need to normalize input text because the input text sometimes irregular format.
To make the input text normalize, execute following command,  
````
cd ./Python_virastar/  
python for_dataset.py -m a_l ../$input_file ../tmp_file
````

After normalization, you can tag morphological information. To tag use following command(to get know more, please refer ./scripts/README),


````
python tag_and_check_performance.py path_to_normalized_text
````

Finally, you need to convert tagged text into a file that is easy to edit. 

````
python conv_to_annotation_format.py output_of_tag_and_check_performance.py
````

To get know about format of output, please refer ./script/README


`easy_demo.sh` is tiny demo script from normalization to convertion. I hope this script helps you.


- - -

# ディレクトリ構成

* ./scripts/ 使用するスクリプト群　※詳しくはscriptsのREADMEを見ること

* trunk perlexのデータ  

* lex_json json化したperlexのファイル  

* lex_json_experiment 実験用の小規模ファイル  

* ./test_morph.py 形態素解析器としてのインターフェース

## 処理の流れ

元コーパス(plane text)  
	|   
for_dataset.py 
	|  
tag_and_check_performance.py  
	|  
タグ付けされたコーパス  
	|  
taged.corpus     
	|  
conv_to_annotation_format.py  
	|  
test_corpus/

##アノテーション作業について
Perlexが辞書的にタグ付けした候補のうち，もっとも適切な要素をひとつ選べばよい．  
````
#new sentence2001
0@2001  yky|PROrecip|yky_____1|inv|inv

1@2001  bwd|V|bwdn_____1|2*3sgPreterit|v25
1@2001  bwd|V|bwdn_____1|infApocope|v25

2@2001  yky|PROrecip|yky_____1|inv|inv

3@2001  nbwd|V|bwdn_____1|3sgPreteritNeg|v25
````
要素は1tokenにひとつふられる．別のtokenとの境界は空白行によって区切られている．先頭の@は"token番号@文番号"を示している．

### アノテーション作業時の正規化誤りを発見した場合
対応表による正規化は不完全．なので，正規化の誤りがゴロゴロ見つかる可能性がある．
そういう時は，annotationファイルを直接いじってかまわない．annotation_format_validation.pyがインデックスの調整を自動的にやってくれる．
新しく挿入したい単語の形態素情報を調べるには，test_morph.pyを利用するとよい．
