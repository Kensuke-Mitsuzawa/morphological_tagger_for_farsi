- - -

# Usage of scripts

## To tag input plane text

````
python tag_and_check_performance.py path_to_plane_text
````


The tagged output file is saved to same as input directory. The filename is '\_plus\_inf.json'.

## To convert json file into a file that is easy to edit
````
python conv_to_annotation_format.py inflection_infoemation_tagged_file
````

The converted output file is save in the directory same as input directory. The filename is '.annotation'.

# About edit fromat
The output of `conv_to_annotation_format.py` has the format like below.

````
#new sentence0  
0@0     dwlt|None|None|None|None|None|

1@0     afqanstan|None|None|None|None|None|

2@0     w|None|None|None|None|None|

3@0     nyrweay|None|None|None|None|None|

4@0     amdadrsan|None|None|None|None|None|

5@0     'mlyat|None|None|None|None|None|

6@0     njat|None|None|None|None|None|
````

`#new sentence0` shows sentence index(starts at 0)  
`0@0     dwlt|None|None|None|None|None|` shows morphological information(tagged with  tag_and_check_performance).  
Each column means below.  
`token_id@sentence_id token|pos of token|stem of token|morphological information of token|category of token|inflection of token|`


- - -



# スクリプトの説明

* lex\_to\_json.py perlexディレクトリからjsonファイルを作成するスクリプト
* tag\_and\_check\_performance.py コーパスにperlex jsonのタグ付けを行うスクリプト
* conv\_to\_annotation\_format.py annotation用の様式に変換するスクリプト
* annotation\_format\_validation.py annotationのtoken番号を修正して，タグが1tokenにひとつであることをチェックするスクリプト

- - -

# 使い方

## plane textにタグ付けをする

````
python tag_and_check_performance.py path_to_plane_text
````

タグ付けされたファイルは，input fileと同じディレクトリに'\_plus\_inf.json'という名前のjsonファイルで保存されます．

## タグ付けされた文書を編集しやすい形式に変換する
````
python conv_to_annotation_format.py inflection_infoemation_tagged_file
````

見やすい形に変換されたファイルはinputと同じディレクトリで，'.annotation'という名前で保存されます．

- - -
