#!/bin/bash
for i in {3..10}
do 
    echo 'Criando PDF' $i
    pandoc markdown/ex$i.md -o ex$i.html -f gfm -t html
    pandoc ex$i.html -o pdf/ex$i.pdf --columns=2 -V geometry:margin=.5in -V geometry:landscape --columns=4
done

rm *.html

echo 'PDFs criados!'