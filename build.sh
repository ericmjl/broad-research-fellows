# Copy stuff into local directory as needed.
cp ../references-master/papers-library.bib .
cp ../styles/pnas.csl .

# Build PDF version
pandoc 01-research-statement.md \
  -o 01-research-statement.pdf \
  -V "geometry:left=0.5in, right=0.5in, bottom=0.75in, top=0.5in" \
  --latex-engine=pdflatex \
  --filter=pandoc-fignos \
  --filter=pandoc-citeproc \
  --bibliography=papers-library.bib

scp ./01-research-statement.pdf doroot:/var/www/html/cv/broad-fellows.pdf

pandoc 01-research-statement.md \
    -o index.html \
    --filter=pandoc-fignos \
    --filter=pandoc-citeproc \
    --bibliography=papers-library.bib \
    -c template/notes.css \
    -H template/header.html \
    --template template/template.html
