file_name=$1
file_name=`echo $file_name | sed "s|test_corpus/json/||"`
echo $file_name
python patch_converting_table.py "test_corpus/json/"$file_name
python tag_and_check_performance.py "test_corpus/json_after_conv_table/"$file_name
python generate_xml.py "test_corpus/taged_corpus/"$file_name
