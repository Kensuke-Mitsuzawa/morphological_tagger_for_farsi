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
(generate_xml.pyで同時にxmlも生成できる) 
	|  
test_corpus/
 
