pandoc 01-research-statement.md \
  -o 01-research-statement.pdf \
  -V "geometry:left=0.5in, right=0.5in, bottom=0.75in, top=0.5in" \
  --latex-engine=pdflatex \
  --filter=pandoc-fignos \
  --filter=pandoc-citeproc \
  --bibliography=papers-library.bib


# open 01-research-statement.pdf

scp ./01-research-statement.pdf doroot:/var/www/html/cv/broad-fellows.pdf
