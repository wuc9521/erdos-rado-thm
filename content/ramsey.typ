#import "@preview/slydst:0.1.3": definition, theorem, lemma, corollary
#import "../macros.typ": problem
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



== General Ramsey's Theorem
#theorem(title: "Ramsey's Theorem", fill-header: orange.lighten(65%), radius: 0.2em)[
  Given an integer $t gt.eq 2$ and integers $q_1, q_2,dots, q_k gt.eq t$, there exists an integer $p$ such that
  $
    K_p^t #sym.arrow.r K_q_1, K_q_2, dots, K_q_k
  $
]
