input_file=$1

cd ./Python_virastar/
python for_dataset.py -m a_l ../$input_file ../tmp_file

cd ../scripts/
# tag morphological information
echo "Finished tagging morphological information\n"
python tag_and_check_performance.py ../tmp_file ../lex_json_experiment
# convert format
echo "\nFinished converting\n"
python conv_to_annotation_format.py ../tmp_file_plus_inf.json

cd ../
mv tmp_file_plus_inf.json.annotation $input_file'.annotation'
rm tmp_file
rm tmp_file_plus_inf.json
