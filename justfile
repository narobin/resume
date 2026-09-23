format-flags := "--pdf-standard ua-1"
default-in := "resume.typ"

build out in=default-in:
  mkdir -p ./output
  typst compile {{format-flags}} {{in}} output/{{out}}

watch in=default-in:
  typst watch --open {{format-flags}} {{in}}

