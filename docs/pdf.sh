#!bin/bash

path=${PWD}
# delete pdf directory
rm -rf "$path/pdf"
mkdir "$path/pdf"

md-to-pdf --config-file "$path/config.json" "$path/README.md" "$path/pdf/01.pdf"
md-to-pdf --config-file "$path/config.json" "$path/installation.md" "$path/pdf/02.pdf"
md-to-pdf --config-file "$path/config.json" "$path/import-a-demo.md" "$path/pdf/03.pdf"
md-to-pdf --config-file "$path/config.json" "$path/update.md" "$path/pdf/04.pdf"
md-to-pdf --config-file "$path/config.json" "$path/theme-options.md" "$path/pdf/05.pdf"
md-to-pdf --config-file "$path/config.json" "$path/pages.md" "$path/pdf/06.pdf"
md-to-pdf --config-file "$path/config.json" "$path/publications.md" "$path/pdf/07.pdf"
md-to-pdf --config-file "$path/config.json" "$path/faq.md" "$path/pdf/08.pdf"

"/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o "$path/pdf/faculty-docs.pdf" "$path/pdf/01.pdf" "$path/pdf/02.pdf" "$path/pdf/03.pdf" "$path/pdf/04.pdf" "$path/pdf/05.pdf" "$path/pdf/06.pdf" "$path/pdf/07.pdf" "$path/pdf/08.pdf"