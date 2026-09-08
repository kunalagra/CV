#import "@preview/fontawesome:0.6.2": *

#set document(
  title: [Kunal Agrawal - Resume],
  author: "Kunal Agrawal",
  description: "Solution Engineer at Prodigal (YC S18). LLM fine-tuning, evaluation and production rollout across providers.",
  keywords: ("AI Engineer","Agent Engineer", "Software Developer"),
)
#set page(paper: "us-letter", margin: (x: 0.4in, y: 0.3in))
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(leading: 0.5em)

#let icon(name, ..a) = pdf.artifact(kind: "layout", fa-icon(name, ..a))

#show link: it => underline(text(fill: rgb("#14375E"), it))

#show heading.where(level: 1): it => {
  text(size: 12pt, weight: "bold", smallcaps(it.body))
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
    text(size: 12pt, left-bottom),
    text(size: 10pt, style: "italic", right-bottom),
  )
  v(-3pt)
}

#let items(..args) = {
  set list(indent: 8pt, body-indent: 4pt, spacing: 4pt)
  args.pos().map(list.item).join()
}

#let project(name, url, stack, date) = {
  grid(columns: (1fr, auto),
    [#link(url)[*#name*] | #emph[#stack]],
    text(size: 9pt, weight: "bold", date),
  )
  v(-3pt)
}

// ---------- HEADING ----------
#align(center)[
  #text(size: 25pt, smallcaps("Kunal Agrawal")) \
  #v(1pt)
  #text(size: 10pt)[
    #icon("phone") #link("tel:+919867174368")[+91-9867174368] #h(4pt)
    #icon("envelope") #link("mailto:kunalagrawal@tutanota.com")[kunalagrawal\@tutanota.com] #h(4pt)
    #icon("link") #link("https://kunalagrawal.com/")[Portfolio] #h(4pt)
    #icon("github") #link("https://github.com/kunalagra")[github/kunalagra] #h(4pt)
    #icon("linkedin-in") #link("https://linkedin.com/in/kunalragrawal")[linkedin/kunalragrawal]
  ]
]

// ----------- EXPERIENCE -----------
= EXPERIENCE
#entry(
  "Prodigal (YC S18)", "06/2025 -- Present",
  [Solution Engineer | #emph[Python, AWS, Kubernetes, FastAPI, Next.js]], "Mumbai, India",
)
#items(
  [Fine-tuned and deployed successive generations of LLMs powering proNotes, Prodigal's real-time call-notes product serving *220K+ calls daily*. Built the Vertex AI fine-tuning pipeline and an LLM-as-judge eval harness, iterating on the judge models to keep scoring honest.],
  [Ran progressive rollouts into production behind a weighted model registry routing live traffic across multiple providers and in-house fine-tunes; drove LLM gateway adoption across two services.],
  [Benchmarked and migrated the publishing service to open-weight LLMs on Vertex AI and Bedrock, engineering schema enforcement across publishing prompts so responses validated first time, eliminating retries.],
  [Built and scaled the near-real-time call publishing and tagging pipeline, moving *10+ customers* onto NRT and landing a *p75 end-to-end call lifecycle under 4 min*. Migrated rule-based verification and classification to #box[LLM-driven] tagging, raising tag recall against a gold-standard set.],
  [*Halved CI times and image sizes* by migrating package builds to uv across services owned by other teams, and productionised notebook workflows into version-controlled, tested modules.],
)

#entry(
  "Testlify", "08/2024 -- 06/2025",
  [Backend Developer | #emph[Loopback 4, Nuxt, MongoDB, Docker, GCP]], "Mumbai, India",
)
#items(
  [Cut response times on key Loopback 4 components by *70%* through code refactoring and database optimisation, reducing support tickets.],
  [Independently built integrations with hiring platforms (Workday, Crelate, Fountain) against client requirements, and extended existing ones with new features and performance work.],
  [Built a scalable, multi-file coding assessment format on Docker, Google Cloud Run and Google Cloud Filestore, serving live VS Code instances to streamline technical hiring.],
)

// ----------- EDUCATION -----------
= EDUCATION
#entry(
  "University of Mumbai", "08/2020 -- 05/2024",
  "B.Tech - Artificial Intelligence and Data Science", [*GPA - 9.79/10*],
)

// ----------- PROJECTS -----------
= PROJECTS
#v(1pt)
#project(
  "OtoControl - Browser-Native Headphone Control", "https://github.com/kunalagra/OtoControl",
  "TypeScript, React, Web Serial, Web Bluetooth", "09/2026",
)
#items(
  [Shipped a browser-native control panel for five headphone ecosystems, giving ANC, EQ and gesture controls. Built the per-vendor driver architecture and a raw-frame debug console to validate each protocol against real hardware.],
)

#v(1pt)
#project(
  "Codegamy - Learn, Compete & Collaborate", "https://codegamy.vercel.app/",
  "Next.js, Node.js, MongoDB, Jitsi", "03/2024",
)
#items(
  [Built a coding & interview platform around peer learning, with cohort matching driven by ratings derived from feedback loops, plus a JDoodle code runner, SocketIO syncpad, and live interviews over Jitsi.],
)

// ----------- EXTRACURRICULAR -----------
= EXTRACURRICULAR
#entry(
  "Mind Benders Club, TCET Mumbai", "07/2022 -- 06/2023",
  [Founder & President], "Mumbai, India",
)
#items(
  [Founded and led a 12-person tech club around AI, Data Science and ML, running 8 workshops and a hackathon that drew *1K+ participants*.],
)

// ----------- TECHNICAL SKILLS -----------
= TECHNICAL SKILLS
#pad(left: 0.15in)[
  *AI/ML:* LLM Fine-tuning (Unsloth), Vertex AI, Bedrock, vLLM, LLM-as-a-Judge Evals \
  *Languages:* Python, TypeScript, JavaScript, SQL \
  *Cloud & Data:* AWS (Lambda, S3, SQS, CloudWatch), GCP, Databricks, PySpark, Docker, Kubernetes \
  *Frameworks & Tools:* FastAPI, Next.js, MongoDB, Git, Linux \
]

// ----------- ACHIEVEMENTS & CERTIFICATIONS -----------
= ACHIEVEMENTS & CERTIFICATIONS
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 4pt,
  [
    #set list(spacing: 2pt)
    - #link("https://github.com/kunalagra/UniMoney")[UniMoney - 1st of 70+ Entries]
  ],
  [
    #set list(spacing: 2pt)
    - Machine Learning - Stanford
  ],
  [
    #set list(spacing: 2pt)
    - Building Conversational AI - NVIDIA
  ],
)
