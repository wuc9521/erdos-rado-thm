#import "@preview/slydst:0.1.3": *

#show: slides.with(
  title: "Ramsey Theory Meets Infinity",
  subtitle: "A short introduction to Erdős-Rado Theorem",
  authors: "Chentian Wu",
)

#set heading(numbering: "1.1.")
#set text(font: "PT Sans", size: 11pt)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Outline

#outline(indent: auto)

#include "./content/ramsey.typ"
#include "./content/erdos-rado.typ"
#include "./content/refs.typ"