#ディレクトリの説明

````
test_corpus  
|  
|--annotation_format conv_to_annotation_format.pyの出力先  
|--json_2nd_version json化されたコーパスの置き場（新バージョン）  
|--json json化されたコーパスの置き場（旧バージョン）  
|--json_after_conv_table_2nd_version 対応表パッチをpatch_converting_table.pyであてた後の出力先(新バージョン)  
|--json_after_conv_table 対応表パッチをpatch_converting_table.pyであてた後の出力先（旧バージョン）  
|--manual_edit_progress アノテーション作業中のファイルを置いておくディレクトリ．annotation_formatからコピーしてきたファイルをここにおく  
|--manual_edit_progress  
|	|  
|	|--validated  作業が終わってannotation_format_validation.pyの出力先  
|  
|--taged_corpus tag_and_check_performance.pyの出力先  
|--manual_edit_done 手作業での修正も終わったファイルの置き場  
```` 


