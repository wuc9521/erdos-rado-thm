
#import "@preview/slydst:0.1.3": frame

#let problem(content, title: none, ..options) = {
  frame(
    counter: context "Problem",
    title: title,
    content,
    ..options,
  )
}
