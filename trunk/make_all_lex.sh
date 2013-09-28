./configure
make
sh fix_lex_bug.sh
python lex_patch.py
make clean

