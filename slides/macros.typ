
#import "@preview/slydst:0.1.3": frame

#let problem(content, title: none, ..options) = {
  frame(
    counter: context "Problem",
    title: title,
    content,
    ..options,
  )
}


#let notation(content, title: none, ..options) = {
  frame(
    counter: context "Notation",
    title: title,
    content,
    ..options,
  )
}


#let example(content, title: none, ..options) = {
  frame(
    counter: context "Example",
    title: title,
    content,
    ..options,
  )
}