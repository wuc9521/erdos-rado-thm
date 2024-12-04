#pagebreak()

#import "@preview/slydst:0.1.3": definition, theorem, lemma, corollary

#set align(horizon)

= Erdős-Rado Theorem

== Erdős-Rado Theorem


#theorem(title: "(Corollary of) Erdős-Rado Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  $
    (2^(aleph_0))^+ arrow.r (aleph_1)^2_2
  $
]

\

#theorem(title: "Erdős-Rado Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For every natural number $n$ and every infinite cardinal $kappa$
  $
    beth_n (kappa)^+ #sym.arrow.r (kappa^+)_kappa^(n+1)
  $
  where
  - $beth_1(kappa) = 2^kappa$
  - $beth_(alpha +1)(kappa) = 2^(beth_alpha (kappa))$
  - $display(beth_lambda (kappa) = union.big_(alpha < lambda) beth_alpha (kappa))$ for limit ordinal $lambda$
]

== Downward Löwenheim-Skolem Theorem



#theorem(title: "(Downward) Löwenheim-Skolem Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  Let $L$ be a first order language. For every structure $N$ in $L$, and every subset $A subset |N|$, there exists a structure $M$ in $L$ such that
  - $A subset |M|$
  - $M prec.eq N$
  - $||M|| lt.eq |A|+|L|+aleph_0$
]

#figure(image("../img/dlst.svg", height: 9em)),


== Strengthened DLST

#definition(title: "Type")[
  If $M$ is a structure in $L$ and $A subset |M|$. Let $L_A$ be the language obtained by adding to $L$ constant symbols for each $a in A$, and $macron(a)=(a_1, a_2, ..., a_n) in M^n$, then the type of $macron(a)$ over $A$ in $M$, denoted by $sans("tp")^M (macron(a) slash A)$, is defined by
  $
    sans("tp")^M (macron(a) slash A) = {phi(v_1,...v_n) in L_A | M models phi(a_1, ..., a_n)}
  $
]

#theorem(title: "Strengthened DLST", fill-header: orange.lighten(65%), radius: 0.2em)[
  For every structure $N$ in $L$, and every subset $A subset |N|$, and every cadinal $kappa$ where $kappa gt.eq 2^(|A|+|L(N)|+ aleph_0)$, there exists a structure $M$ in $L$ such that
  - $A subset |M|$
  - $M prec.eq N$
  - $||M|| < kappa$
  - For every $macron(a) in |N|, sans("tp")^N (macron(a) slash A)$ is realized in $M$
]

== Erdős-Rado Theorem


#theorem(title: "Erdős-Rado Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  For every natural number $n$ and every infinite cardinal $kappa$, we have that
  $
    beth_n (kappa)^+ #sym.arrow.r (kappa^+)_kappa^(n+1)
  $
]

\

_Pf._ We proceed by indction on $n < omega$ to show that for very infinite $kappa$, the partition relation
$
  beth_n (kappa)^+ #sym.arrow.r (kappa^+)_kappa^(n+1)
$
holds.

1. When $n=0$.
$kappa^+ arrow.r (kappa^+)_kappa^1$ is true because $kappa$ is regular (same as the Pigeonhole Principle).
#pagebreak()

2. Suppose the statement holds for $n$, we want to show that it holds for $n+1$. _i.e._

$
  beth_(n+1) (kappa)^+ #sym.arrow.r (kappa^+)_kappa^(n+2)
$
_i.e._, let $kappa$ be given, and denote by $mu$ the carinality $beth_n (kappa)$. We want to show that for every coloring function $F:[(2^mu)^+]^ (n+2) arrow.r kappa$, there is an $F$-monochromatic subset $B subset (2^mu)^+$ of cardinality $kappa^+$.

#pagebreak()

Let $N=angle.l (2^mu)^+,<,F, i  angle.r_(i<kappa)$, where the set of constant symbols ${i}_(i<kappa)$ denotes the colors.

By the Strengthened DLST, we can define an increasing _continous_ chain of structures ${N_i prec.eq N | i < mu^+}$ such that
- $i<j arrow.r.double N_i prec.eq N_j$
- if $i$ is a limit ordinal, then $N_i = union.big_(j<i) N_j$
- for all $i$, $||N_i|| <= 2^mu$
- for every $B subset N_i$ with cardinality $<= mu$ and $macron(a) in |N|$, $sans("tp")^(N) (macron(a) slash B)$ is realized in $N_(i+1)$


Let $display(M := union.big_(i<mu^+) N_i)$, then the construction implies $||M||<2^(mu)$. Since $||N||=(2^mu)^+$ is regular, we may fix $alpha^* in |N| backslash sup(|M|)$.

#pagebreak()

Define ${a_i | i<mu^+} subset |M|$ inductively with $a_i in N_i$ such that the following holds,

$
  sans("tp")^N (a_i slash {a_j}_(j<i)) = sans("tp")^N (alpha^* slash {a_j}_(j<i))
$

By the last requirement on the construction of $N_i$, this construction is possible.

It's easy to see that for all $i<j<mu^+$, $a_i < a_j$. Moreover, for every $i_1 < ... < i_(n+2)<mu^+$, we have that

$
  F(a_(i_1), ..., a_(i_(n+2))) = F(a_(i_1), ..., a_(i_(n+1)), alpha^*)
$

#pagebreak()

Now define the new coloring $G:[{a_i}]^(n+1) arrow.r kappa$ by

$
  G(a_(i_1), ..., a_(i_(n+1))) = F(a_(i_1), ..., a_(i_(n+1)), alpha^*)
$

Since $mu^+ arrow.r (kappa^+)_kappa^(n+1)$, there is a monochromatic set $B subset {a_i}_(i<mu^+)$ of cardinality $kappa^+$ and $i_0 in kappa$ such that

for every $a_1 < ... < a_(n+1) in B$, $G(a_1, ..., a_(n+1)) = i_0$. Then for every $a_1 < ... < a_(n+2) in B$,
$
  F(a_1, ..., a_(n+2)) = F(a_1, ..., a_(n+1), alpha^*) = G(a_1, ..., a_(n+1)) = i_0
$
