# Build PDF

You will need the following software to build the PDF.

- LaTeX
    - `pdflatex`
- Pandoc:
    - `pandoc`
    - `pandoc-fignos`
    - `pandoc-citeproc`

The bibliography can be found on my [`references-master`](http://github.com/ericmjl/references-master) repository.

In the [build script](./build.sh), the `open` command works only on Mac OS X. On other platforms, once the PDF is produced, you can open it using your file system browser.
