format-flags := "--pdf-standard ua-1"
default-in := "resume.typ"

build out in=default-in:
  typst compile {{format-flags}} {{in}} {{out}}

watch in=default-in:
  typst watch --open {{format-flags}} {{in}}

