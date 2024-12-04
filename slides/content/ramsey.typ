
#import "@preview/slydst:0.1.3": definition, theorem, lemma, corollary
#import "../macros.typ": problem, notation, example
#import "@preview/cetz:0.3.1"

#set align(horizon)
= Ramsey's Theorem

== Problem of friends and strangers


#problem(title: "The Friendship Riddle")[
  Of six (or more) people, either there are three, each pair of whom are acquainted, or there are three, each pair of whom are unacquainted.
]

\
#align(center)[
  #grid(
  columns: 2,  // 2 columns
  gutter: 1em, // 1em gutter
  figure(image("../img/friendship-1.jpg", height: 10.5em)),
  figure(image("../img/friendship-2.jpg", height: 10.5em))
)
]

#pagebreak()

#problem(title: "The Friendship Riddle")[
  Of six (or more) people, either there are three, each pair of whom are acquainted, or there are three, each pair of whom are unacquainted.
  $
    6 arrow.r (3)^2_2
  $
]

#align(center)[
  #figure(image("../img/friendship-3.jpg", height: 11em)),
]


#pagebreak()


== Notations
#definition(title: "Complete hypergraph")[
  A _complete hypergraph_ on a set $S$, denoted as $[S]^n$, is the set of $n$-membered subset of $S$ for some $n gt.eq 1$.
  $
    [S]^n = {T subset S: |T|=n}
  $
]

// #v(1fr)
\

#definition(title: "Coloring function")[
  A $kappa$-_coloring_ of a complete hypergraph $[S]^n$ is a function $c:[S]^n #sym.arrow.r kappa$ where $kappa$ is a cardinal.
]
\

#definition(title: "Homogeneous set")[
  A subset $T subset S$ is said to be _homogeneous_ for a $kappa$-coloring $c:[S]^n arrow.r kappa$ if $c([T]^n)$ is a singleton.
]

#pagebreak()

#notation(title: $lambda arrow.r (mu)_kappa^n$)[
  Let $n< omega$ and suppose $ lambda, kappa$ and $ mu$ are cardinal numbers (not necessarily infinite). We denote by $ lambda arrow.r (mu)_kappa^n$ the following statement:

  For every $kappa$-coloring of the complete hypergraph $[S]^n$, there exists a homogeneous set $T subset S$ such that $|T|=lambda$ and $|c([T]^n)|=mu$.
]

\

#example(title: "Pigeonhole Principle")[
  Let $lambda$ be a finite cardinal number. Then, the statement $lambda^+ arrow.r (2)_lambda ^1$ is equivalent to the Pigeonhole Principle.
]

\
#example(title: "Arrow notation for the Friends and Strangers' Problem")[
  Let $n=2$, $lambda=6$, $mu=3$ and $kappa=2$. Another notation would be $K_6 arrow.r K_3, K_3$
]

== Ramsey Theorem

#theorem(title: "Finite Ramsey Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For every positive integers $n, lambda, kappa$, there exists positive integer $gamma$ such that
  $
    gamma arrow.r (lambda)_kappa^n
  $
]

\

#theorem(title: "Infinite Ramsey Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  $
    aleph_0 arrow.r (aleph_0)_2^2
  $
]

\

#theorem(title: "Generalized Ramsey Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For any positive integers $n, k$,
  $
    aleph_0 arrow.r (aleph_0)_k^n
  $
]

== Other Infinite Cardinals?

A natural question is whether the infinite Ramsey Theorem holds for other infinite cardinals. The answer is *NO*.

#theorem(title: "Sierpiński 1933", fill-header: orange.lighten(65%), radius: 0.2em)[
  $
    aleph_1 arrow.r.not (aleph_1)_2^2
  $
]
\

What's worse, whether a uncountable cardinal $chi$ satisfies $chi arrow.r (chi)_2^2$ is independent of ZFC.

#theorem(title: "Erdős and Tarski 1943", fill-header: orange.lighten(65%), radius: 0.2em)[
  Let $chi$ be an uncountable cardinal. If $chi arrow.r (chi)_2^2$, then the first order theory ZFC has a model (namely ZFC is consistent).
]