#!/bin/bash
for file in "markdown"/*
do  
    echo $file
    tmp=${file#*/}   # remove prefix ending in "_"
    base=${tmp%.*}   #
    echo 'Criando PDF' $base
    # pandoc --lua-filter markdown/pagebreak.lua markdown/ex$i.md -o ex$i.html -f gfm -t html
    # pandoc ex$i.html -o pdf/ex$i.pdf --columns=2 -V geometry:margin=.5in -V geometry:landscape --columns=4 
    pandoc markdown/$base.md -o pdf/$base.pdf --columns=2 -V geometry:margin=.5in -V geometry:landscape --columns=4 
done

# rm *.html

echo 'PDFs criados!'