#set page(
  paper: "us-letter",
  margin: (x: 24pt, y: 32pt),
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
      if start != "" and end != "" [#start #sym.dash.en #end] else if start != "" [Since #start] else if end
        != "" [Expected #end],
    ),

    org, location,
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
  - Selected Coursework: Dynamics, Statics & Mechanics of Materials, Intro to Aerospace (Isentropic & Viscous Flow)
]

= Experience

#experience(
  "Liquid Rocket Systems Test Stand Engineer",
  start: "August 2026",
  location: "Columbus, OH",
  org: "Buckeye Space Launch Initiative",
)[
  - Engineered a test stand to calibrate mass flow rate for critical engine components, including injector plate and regenerative cooling channels, using OnShape and Ansys Workbench
  - Developed a method to model LOX and Kerosene flow in ground tests with nitrogen using a custom Python script to explore over two million combinations of parameters
  - Coordinated team efforts by managing tasks in self-hosted Kaneo project management software
]

#experience(
  "Linux Student Administrator",
  start: "August 2026",
  location: "Columbus, OH",
  org: "Engineering Technology Services, OSU",
)[
  - Ensured compliance and security of 400+ Red Hat and Ubuntu servers and workstations across the College of Engineering by maintaining Ansible build system
  - Automated secure secret provisioning for new system deployments by developing custom Python scripts
  - Architected implementation strategy for security recommendations for newly adopted RHEL 10 operating system
  - Resolved complex OS issues with Linux-based faculty research systems
]

#experience(
  "CoreTech Intern",
  start: "March 2021",
  end: "August 2021",
  location: "Cincinnati, OH",
  org: "General Electric",
)[
  - Owned the end-to-end development of a custom JavaScript-based Tableau integration for digital signage, providing real-time insights to factory teams across the company
  - Reduced operating costs for digital signage by \$40k per year by migrating to new vendor
  - Ensured the reliability and ease of use of internal Microsoft Teams plugin used by 100k+ employees
]

= Technical Skills

#block[
  #show grid.cell.where(x: 0): it => strong[#it]

  #grid(
    columns: (8em, 1fr),
    gutter: 0.5em,
    [CAD], [SOLIDWORKS, Solid Edge, OnShape],
    [Analysis], [Ansys Workbench, Data Visualization],
    [Coding], [Python, MATLAB, JavaScript],
    [IT], [Proxmox, SSH, Linux, Bash/Shell, Vim],
  )
]

= Certifications

#experience(
  "Solid Edge Mechanical Associate",
  start: "February 2022",
)[]
