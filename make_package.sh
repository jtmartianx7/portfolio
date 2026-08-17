name="John-applies-for-Launch-Pad-Engineer"

pandoc coverletter.md pagebreak.md launchpad_concept.md pagebreak.md index.md --pdf-engine=xelatex -o "$name-full-res.pdf"

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH -dQUIET \
  -dDownsampleColorImages=true -dColorImageDownsampleType=/Bicubic -dColorImageResolution=300 \
  -dDownsampleGrayImages=true -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=300 \
  -dDownsampleMonoImages=true -dMonoImageDownsampleType=/Bicubic -dMonoImageResolution=300 \
  -dAutoFilterColorImages=false -dColorImageFilter=/DCTEncode -dJPEGQ=85 \
  -o "$name.pdf" "$name-full-res.pdf"
