all:	index.html

INDEX_FILES=index0.html index1.html myke index2.html

index.html:	${INDEX_FILES} Makefile
	rm -f index.html
	cat ${INDEX_FILES} >index.html
	chmod a-w index.html
