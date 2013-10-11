#ディレクトリの説明

test_corpus  
|  
|--annotation_format conv_to_annotation_format.pyの出力先  
|--json json化されたコーパスの置き場  
|--json_after_conv_table 対応表パッチをpatch_converting_table.pyであてた後の出力先  
|--manual_edit_progress アノテーション作業中のファイルを置いておくディレクトリ．annotation_formatからコピーしてきたファイルをここにおく  
|--manual_edit_progress  
|	|  
|	|--validated  作業が終わってannotation_format_validation.pyの出力先  
|  
|--taged_corpus tag_and_check_performance.pyの出力先  
|--xml generate_xml.pyの出力先（annotationの過程でxmlは使用しないことにしたので，別に必要はない）  


