#set page(
  paper: "us-letter",
  margin: (x: 32pt, y: 48pt),
)
#set text(
  font: "ETBembo",
  size: 12pt,
)
#set document(
  title: [Noah Robinson],
)
#set block(spacing: 0.65em)

#show heading.where(level: 1): it => {
  text[#it]
  v(0.5em, weak: true)
  line(length: 100%)
}

#show link: underline

#let experience(name, start: "", end: "", location: "", org: "", bullets) = {
  v(1em, weak: true)
  grid(
    columns: (1fr, auto),
    column-gutter: 0.5em,
    row-gutter: 0.5em,
    align: (left + horizon, right + horizon),
    heading(level: 2, name),
    text(
      style: "italic",
      if start != "" and end != "" [#start #sym.dash.en #end]
      else if start != "" [Since #start]
      else if end != "" [Expected #end],
    ),
    org,
    location,
  )
  v(0.3em)
  bullets
}


#grid(
  columns: (1fr, auto, auto, auto),
  column-gutter: 3em,
  align: (col, row) => if col == 0 { left + horizon } else { right + horizon },
  title(),
  link("mailto:contact@narobin.com"),
  link("https://narobin.com")[narobin.com],
  link("https://linkedin.com/in/narobin")[linkedin.com/in/narobin],
)

= Education

#experience(
  "B.S. Aerospace Engineering",
  end: "May 2029",
  org: "The Ohio State University",
  location: "Columbus, OH",
)[
  - Intro to Aerospace Engineering
  - Dynamics
]

= Experience

#experience(
  "Liquid Rocket Systems Team",
  start: "August 2026",
  location: "Columbus, OH",
  org: "Buckeye Space Launch Initiative",
)[
  - Designing test stand to calibrate engine control system by measuring flow performance of critical engine components such as injector and regenerative cooling channels
  - Learning design, operations, and manufacturing hands-on 
]

#experience(
  "Linux Student Administrator",
  start: "August 2026",
  location: "Columbus, OH",
  org: "Engineering Technology Services, OSU",
)[
  - Contributed to development of Ansible build system used across the entire College of Engineering
  - Provisioned new and converted systems with Linux
]

#experience(
  "CoreTech Intern",
  start: "March 2021",
  end: "August 2021",
  location: "Cincinnati, OH",
  org: "General Electric",
)[
- Reduced operating costs for digital signage by \$40k per year by migrating to new vendor
- Developed ground-up integration system by coordinating with vendor, global stakeholders, and end users
- Provided real-time insights to factory by developing Tableau integration for digital signage
- Ensured reliability and ease of use of internal Microsoft Teams plugin used by 100k+ employees
]

= Technical Skills

#block[
  #show grid.cell.where(x: 0): it => strong[#it]

  #grid(
    columns: (8em, 1fr),
    gutter: 0.5em,
    [CAD], [SOLIDWORKS, Solid Edge, OnShape],
    [Analysis], [Ansys Workbench],
    [Coding], [Python, MATLAB],
    [IT], [Proxmox, SSH, Linux, Command Line, VIM],
    [Office], [Excel]
  )
]

= Certifications

#experience(
  "Solid Edge Mechanical Associate",
  start: "February 2022",
)[]

