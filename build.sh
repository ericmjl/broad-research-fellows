pandoc 01-research-statement.md \
  -o "01-research-statement.pdf" \
  -V "geometry:left=0.5in, right=0.5in, bottom=1in, top=0.5in" \
  --latex-engine="/Library/TeX/texbin/xelatex" \
  --filter="/Users/ericmjl/anaconda/bin/pandoc-fignos" \
  --filter="/usr/local/bin/pandoc-citeproc" \
  --bibliography="../references-master/papers-library.bib"

# pandoc 02-cv.md -o "02-cv.pdf" -V "geometry:left=0.5in, right=0.5in, bottom=1in, top=0.5in" --latex-engine="/Library/TeX/texbin/xelatex"  --bibliography="/Users/ericmjl/Documents/github/writing/references-master/papers-library.bib"
