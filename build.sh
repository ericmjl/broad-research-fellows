pandoc 01-research-statement.md \
  -o "01-research-statement.pdf" \
  -V "geometry:left=0.5in, right=0.5in, bottom=1in, top=0.5in" \
  --latex-engine="pdflatex" \
  --filter="pandoc-fignos" \
  --filter="pandoc-citeproc" \
  --bibliography="papers-library.bib"

open 01-research-statement.pdf
