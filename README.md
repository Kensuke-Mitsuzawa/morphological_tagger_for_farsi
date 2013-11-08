performance_perlex
==================

* ./test_corpus/ テストコーパスの格納ディレクトリ　※詳細はtest_corpusのREADMEを見ること   

* ./scripts/ 使用するスクリプト群　※詳しくはscriptsのREADMEを見ること

* conv_table_working_dir 修正中の対応表を一時的においておくディレクトリ  

* trunk perlexのデータ  

* lex_json json化したperlexのファイル  

* lex_json_experiment 実験用の小規模ファイル  

* ./test_morph.py 形態素解析器としてのインターフェース

## 処理の流れ

元コーパス(json)  
	|   
patch_converting_table.py  
	|  
対応表を当てた後のコーパス  
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
