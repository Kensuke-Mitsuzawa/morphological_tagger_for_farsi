performance_perlex
==================

test_corpus テストコーパスの格納ディレクトリ  
	|  
	|--json json化したコーパスの格納場所  
	|--json_after_conv_table 対応表パッチを当てた後のコーパス 
	|--xml xml化したコーパスを保存しておくディレクトリ 

conv_table_working_dir 修正中の対応表を一時的においておくディレクトリ  

new_corpus_data 元々の対応表を置いておくディレクトリ  

trunk perlexのデータ  

lex_json json化したperlexのファイル  

lex_json_experiment 実験用の小規模ファイル  

taged.corpus perlexタグ付け後のコーパス  

patch_converting_table.py 対応表パッチを当てるスクリプト  

lex_to_json.py perlexディレクトリからjsonファイルを作成するスクリプト  

tag_and_check_performance.py コーパスにperlex jsonのタグ付けを行うスクリプト 

generate_xml.py	対応表パッチあて済みコーパスからxmlを生成するスクリプト

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
generate_xml.py  
	|  
test_corpus/xml/
 
