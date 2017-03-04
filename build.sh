# Copy stuff into local directory as needed.
cp ../references-master/papers-library.bib .
cp ../styles/pnas.csl .

# Make figures
python convert_images.py

# Build PDF version
pandoc 01-research-statement.md \
  -o 01-research-statement.pdf \
  -V "geometry:left=0.5in, right=0.5in, bottom=0.75in, top=0.5in" \
  --latex-engine=pdflatex \
  --filter=pandoc-fignos \
  --filter=pandoc-citeproc \
  --bibliography=papers-library.bib

# Copy to remote server
scp ./01-research-statement.pdf doroot:/var/www/html/cv/broad-fellows.pdf

# Make HTML version
pandoc 01-research-statement.md \
    -o index.html \
    --filter=pandoc-fignos \
    --filter=pandoc-citeproc \
    --bibliography=papers-library.bib \
    -c template/notes.css \
    -H template/header.html \
    --template template/template.html

git add .
git commit
git push
