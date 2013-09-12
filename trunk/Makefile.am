 # Process this file with automake to produce Makefile.in

LANGUAGE = fa
LEXFILES =	ADJ.lex \
		ADV.lex \
		AR.lex \
		CON.lex \
		DELM.lex \
		DET.lex \
		INT.lex \
		MS.lex \
		NP.lex \
		OH.lex \
		P.lex \
		PRO.lex \
		PS.lex \
		CLASS.lex \
		V.lex \
		N.lex \
		addons.lex \
		countries.lex \
		person_names.lex \
		cities.lex

DOC = README LICENSE INSTALL

LEX_ENCODING = L2
PRERECODING=| perl -pe "s/ā/â/g; s/ħ/ł/g; s/ẓ/ż/g; s/⎖/˛/g; s/ġ/¤/g;"

BUILT_SOURCES = alexina-makefile

include $(srcdir)/alexina-makefile

alexina-makefile: $(alexinatoolsdir)/alexina-makefile
	cp $< $@ 
