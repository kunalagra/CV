#import "@preview/fontawesome:0.6.0": *

#set page(paper: "us-letter", margin: (x: 0.4in, y: 0.3in))
#set text(font: "New Computer Modern", size: 10pt)
#set par(leading: 0.5em)
#show link: set text(fill: black)

#let section(title) = {
  text(size: 12pt, weight: "bold", smallcaps(title))
  v(-9pt)
  line(length: 100%, stroke: 0.5pt)
  v(-4pt)
}

#let entry(left-top, right-top, left-bottom, right-bottom) = {
  grid(columns: (1fr, auto),
    text(size: 12pt, weight: "bold", left-top),
    text(size: 10pt, weight: "bold", right-top),
  )
  v(-4pt)
  grid(columns: (1fr, auto),
    text(size: 12pt, style: "italic", left-bottom),
    text(size: 10pt, style: "italic", right-bottom),
  )
  v(-3pt)
}

#let items(..args) = {
  set list(indent: 8pt, body-indent: 4pt, spacing: 4pt)
  for item in args.pos() { list.item(item) }
}

// ---------- HEADING ----------
#align(center)[
  #text(size: 25pt, smallcaps("Kunal Agrawal")) \
  #v(1pt)
  #text(size: 10pt)[
    #fa-icon("phone") #link("tel:+919867174368")[#underline("+91-9867174368")] #h(4pt)
    #fa-icon("envelope") #link("mailto:kunalagrawal@tutanota.com")[#underline("kunalagrawal@tutanota.com")] #h(4pt)
    #fa-icon("linkedin-in") #link("https://linkedin.com/in/kunalragrawal")[#underline("kunalragrawal")] #h(4pt)
    #fa-icon("github") #link("https://github.com/kunalagra")[#underline("kunalagra")] #h(4pt)
    #fa-icon("link") #link("https://kunalagrawal.vercel.app/")[#underline("Portfolio")]
  ]
]

// ----------- EDUCATION -----------
#section("EDUCATION")
#entry(
  "University of Mumbai", "08/2020 -- 05/2024",
  "B.Tech - Artificial Intelligence and Data Science", [*CGPI - 9.79*],
)

// ----------- EXPERIENCE -----------
#section("EXPERIENCE")
#entry(
  [Prodigal Technologies #link("https://prodigaltech.com/")[#fa-icon("external-link-alt", size: 0.8em)]], "06/2025 -- Present",
  [#underline("Solution Engineer") | #underline("Python, AWS, Kubernetes, FastAPI, Next.js")], "Mumbai, India",
)
#items(
  [Fine-tuned and deployed LLMs for a real-time call notes service processing 170K+ daily calls. Designed an end-to-end  pipeline to standardize model fine tuning workflow. Built custom event detection based on client-specific industry needs.],
  [Identified and fixed multiple bottlenecks in the publishing pipeline achieving *30–40% latency reduction* by adding multi-threading and more. Migrated builds to UV with optimised Docker images, halving CI times and image sizes.],
  [Built Databricks pipelines for client reporting and workflows, cutting manual effort for multiple teams. Developed two internal Next.js apps adopted org-wide, enabling CSMs and Support to self-serve, saving engineering bandwidth.
],
)

#entry(
  [Testlify #link("https://testlify.com/")[#fa-icon("external-link-alt", size: 0.8em)]], "08/2024 -- 06/2025",
  [#underline("Backend Developer") | #underline("Loopback 4, Nuxt, MongoDB, Docker, GCP")], "Mumbai, India",
)
#items(
  [*Improved application responsiveness* by optimizing response time of key components in Loopback 4 by *70%* through *code refactoring* and *database optimization*, reducing support tickets.],
  [*Independently developed* integrations with Hiring platforms (*Workday, Crelate, Fountain, etc*), driven by client needs. Enhanced existing integrations by adding new features and optimized performance for better experience.],
  [*Developed* a *scalable*, multi-file coding assessment format using *Docker*, *Google Cloud Run*, and *Google Cloud Filestore* to serve *VS Code* Instance, *streamlining* the technical hiring process for recruiters.],
)

// ----------- PROJECTS -----------
#section("PROJECTS")
#v(1pt)
#grid(columns: (1fr, auto),
  [#link("https://github.com/kunalagra/UniMoney")[#underline[*UniMoney - Manage Your Money*] #fa-icon("external-link-alt", size: 0.8em)] | #underline("React Native, Node.js, MongoDB")],
  text(size: 9pt, weight: "bold", "05/2024"),
)
#v(-3pt)
#items(
  [Led a team of three in developing a cross-platform app for *automated personal finance management* as part of a B. Tech project. The project ranked *1st out of 70+ entries* in the Mind's Eye Competition.],
  [Developed complete backend and database Schema for the application using NodeJS and Mongoose. Features includes *automated transaction details extraction from SMS* text, Historical Statements & Analytics, Gamification elements, Budgeting, CRUD Ops for Transactions & Bank Account],
)

#v(1pt)
#grid(columns: (1fr, auto),
  [#link("https://codegamy.vercel.app/")[#underline[*Codegamy - Learn, Compete & Collaborate*] #fa-icon("external-link-alt", size: 0.8em)] | #underline("Next.js, Node.js, MongoDB, Jitsi")],
  text(size: 9pt, weight: "bold", "03/2024"),
)
#v(-3pt)
#items(
  [Led a team of 4 in building comprehensive platform for *coding & interviews* with focus on peer learning.],
  [Developed various features including *peer learning using cohort models based on ratings derived using feedback loops* for interview preparation. Other key features include code runner using JDoodle, syncpad using SocketIO, live interview with Jitsi, learning modules and user dashboard & analytics.],
)

// ----------- EXTRACURRICULAR -----------
#section("EXTRACURRICULAR")
#entry(
  "Mind Benders Club - TCET", "07/2022 -- 06/2023",
  [#underline("Founder & President")], "Mumbai, India",
)
#items(
  [Founded and led a tech club with a team of 12, focusing on AI, Data Science, and Machine Learning topics.],
  [Organized 8 workshops and 1 Hackathon, attracting over 1K participants and 25+ teams.],
)

// ----------- TECHNICAL SKILLS -----------
#section("TECHNICAL SKILLS")
#pad(left: 0.15in)[
  *Languages:* Python, TypeScript, JavaScript, SQL \
  *Cloud & Infra:* AWS (Lambda, S3, SQS, CloudWatch), GCP, Docker, Kubernetes, Databricks \
  *Frameworks & Tools:* FastAPI, MongoDB, PySpark, Next.js, LoopBack, GitHub, Linux \
]

// ----------- ACHIEVEMENTS & CERTIFICATIONS -----------
#section("ACHIEVEMENTS & CERTIFICATIONS")
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 4pt,
  [
    #set list(spacing: 2pt)
    - 700+ DSA Problems Solved
    - #link("https://www.codechef.com/users/ruthlessruler")[*3 Stars* - CodeChef #fa-icon("external-link-alt", size: 0.8em)]
  ],
  [
    #set list(spacing: 2pt)
    - Semi Finalist @ SIH'23
    - #link("https://coursera.org/share/c715d24542b410805a2ff3034949858d")[Machine Learning - Stanford #fa-icon("external-link-alt", size: 0.8em)]
  ],
    [
    #set list(spacing: 2pt)
    - 3rd @ AndroidBuzz Hackathon
    - #link("https://courses.nvidia.com/certificates/b38a698150c5410c9afeb954cf87468c/")[Fundamentals of DL - NVIDIA #fa-icon("external-link-alt", size: 0.8em)]
  ],
)
