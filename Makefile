all: test_my_list rapport.pdf

rapport.pdf: rapport.tex
	pdflatex rapport.tex

test_my_list : test_my_list.ml my_list.cmo
	ocamlc -o test_my_list my_list.cmo test_my_list.ml

my_list.cmo : my_list.ml my_list.cmi
	ocamlc -c my_list.ml

my_list.cmi : my_list.mli
	ocamlc -c my_list.mli

clean:
	rm -rf test_my_list *.cmi *.cmo *~ rapport.aux rapport.log rapport.pdf
