#入力はjson化されたコーパス（口語の状態で無修正）
file_name=$1
file_name=`basename ${file_name}`
echo $file_name
cd scripts/
pypy patch_converting_table.py "../test_corpus/json_2nd_version/"$file_name
pypy tag_and_check_performance.py "../test_corpus/json_after_conv_table/"$file_name
pypy conv_to_annotation_format.py "../test_corpus/taged_corpus/"$file_name
