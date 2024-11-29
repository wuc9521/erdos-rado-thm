#pagebreak()

#import "@preview/slydst:0.1.3": definition, theorem, lemma, corollary

= Erdős-Rado Theorem

== Erdős-Rado Theorem
\
#figure(image("../img/erdos.jpg", height: 8em))
\
#theorem(title: "Erdős-Rado Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For every natural number $n$ and every infinite cardinal $kappa$, we have that
  $
    beth_n (kappa)^+ #sym.arrow.r (kappa^+)_kappa^(n+1)
  $
]

#pagebreak()

_Pf_. By induction on $n$.

1. $n=0$. The statement is $beth_0 (kappa)^+ =kappa^+ #sym.arrow.r (kappa^+)_kappa^1$ is equivalent to the Infinite Pigeonhole Principle.
2. Suppose we have proved the theorem for $n-1$. Let $lambda=beth_n (kappa)^+$. Let the coloring function be

$
  c:[lambda]^(n+1) #sym.arrow.r kappa
$

For $alpha<lambda$, let

$
  c_alpha:[lambda \\ {alpha}]^n &arrow.r kappa \
  A &arrow.r.bar c({alpha} union A)
$

For $alpha<beth_(n-1)(kappa)^+$ We build $X_0 subset X_1 dots subset X_alpha subset dots$ such that $X_alpha subset beth_n (kappa)^+$ and each $X_alpha$ has cardinality of at most $beth_n (kappa)$