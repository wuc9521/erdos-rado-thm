#import "@preview/slydst:0.1.3": *


#show: slides.with(
  title: "Ramsey Theory Meets Infinity",
  subtitle: "A short introduction to Erdős-Rado Theorem",
  authors: "Chentian Wu",
)


#set heading(numbering: "1.")
#set text(font: "PT Sans", size: 11pt)
#show outline.entry.where(level: 2): it => {
  it
}

== Outline

#outline()

#include "./content/ramsey.typ"
#include "./content/erdos-rado.typ"


== References

#bibliography(
  "refs.bib",
  full: true,
  style: "springer-mathphys",
)
