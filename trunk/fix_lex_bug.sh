DIR_PATH='./'

for f in ${DIR_PATH}*
do
	if expr $f : ".*\.lex$"; then
		echo $f 
		python fix_lex.py $f
	fi
done
