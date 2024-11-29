#import "@preview/slydst:0.1.3": definition, theorem, lemma, corollary
#import "../macros.typ": problem, notation, example
#import "@preview/cetz:0.3.1"

= Ramsey's Theorem

== Problem of friends and strangers


#problem(title: "The Friendship Riddle")[
  Of six (or more) people, either there are three, each pair of whom are acquainted, or there are three, each pair of whom are unacquainted.
]

#figure(image("../img/friends.png", height: 13em))


#cetz.canvas({
  import cetz.draw: *
  let node(a, b) = circle((a, b), radius: 2pt, fill: black)
  let edge(a, b) = line(a, b, color: gray)
  // let edge(a, b, color) = line(a, b, color: color)
  node(2, 0) // 2
  node(1, 1.732) // 1 + √3i
  node(-1, 1.732) // -1 + √3i
  node(-2, 0) // -2
  node(-1, -1.732) // -1 - √3i
  node(1, -1.732) // 1 - √3i
})



== Notations
#definition(title: "Complete hypergraph")[
  A _complete hypergraph_ on a set $S$, denoted as $[S]^n$, is the set of $n$-membered subset of $S$ for some $n gt.eq 1$.
  $
    [S]^n = {T subset S: |T|=n}
  $
]



#definition(title: "Coloring function")[
  A $kappa$-_coloring_ of a complete hypergraph $[S]^n$ is a function $c:[S]^n #sym.arrow.r kappa$ where $kappa$ is a cardinal.
]

#definition(title: "Homogeneous set")[
  A subset $T subset S$ is said to be _homogeneous_ for a $kappa$-coloring $c:[S]^n arrow.r kappa$ if $c([T]^n)$ is a singleton.
]

#notation(title: $lambda arrow.r (mu)_kappa^n$)[
  Let $n< omega$ and suppose $ lambda, kappa$ and $ mu$ are cardinal numbers (not necessarily infinite). We denote by $ lambda arrow.r (mu)_kappa^n$ the following statement:

  For every $kappa$-coloring of the complete hypergraph $[S]^n$, there exists a homogeneous set $T subset S$ such that $|T|=lambda$ and $|c([T]^n)|=mu$.
]

#pagebreak()

== Examples

#example(title: "Pigeonhole Principle")[
  Let $lambda$ be a finite cardinal number. Then, the statement $lambda^+ arrow.r (2)_lambda ^1$ is equivalent to the Pigeonhole Principle.
]

#example(title: "Arrow notation for the Friends and Strangers' Problem")[
  Let $n=2$, $lambda=6$, $mu=3$ and $kappa=2$. Then, the statement $6 arrow.r (3)_2^2$ is equivalent to the Friendship Riddle.

  Here the Ramsey number is $R(3,3)=6$. $kappa$ is the number of colors, $n$ is the number of people and $mu$ is the number of people who are friends.
]

== Finite Ramsey Theorem

#theorem(title: "Finite Ramsey Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For every positive integers $n, lambda, kappa$, there exists positive integer $gamma$ such that
  $
    gamma arrow.r (lambda)_kappa^n
  $
]

== Infinite Ramsey Theorem

#theorem(title: "Infinite Ramsey Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  $
    aleph_0 arrow.r (aleph_0)_2^2
  $
]

#theorem(title: "Generalized Ramsey Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For any positive integers $n, kappa$,
  $
    aleph_0 arrow.r (aleph_0)_kappa^n
  $
]
