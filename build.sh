pandoc 01-research-statement.md \
  -o "01-research-statement.pdf" \
  -V "geometry:left=0.5in, right=0.5in, bottom=1in, top=0.5in" \
  --latex-engine="/Library/TeX/texbin/pdflatex" \
  --filter="/Users/ericmjl/anaconda/envs/writing/bin/pandoc-fignos" \
  --filter="/Users/ericmjl/anaconda/envs/writing/bin/pandoc-citeproc" \
  --bibliography="papers-library.bib"
