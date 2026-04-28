#import "../fonts.typ": fonts, sizes

#let default-abstract-en-content = [
  The English version should be corresponding to the Chinese version.
]

#let abstract-en-content = state("abstract-en", default-abstract-en-content)

#let default-abstract-en-keywords = (
  "Database Technology",
  "Artificial Intelligence",
  "Data Analysis and Processing",
  "Semantic Analysis",
)

#let abstract-en-keywords = state("abstract-en-keywords", default-abstract-en-keywords.join("; "))

#let abstract-en(
  body: default-abstract-en-content,
  keywords: default-abstract-en-keywords,
) = {
  context abstract-en-content.update(body)
  context abstract-en-keywords.update(keywords.join("; "))
}

#let abstract-en-page() = {
  set page(numbering: "I")

  align(center)[
    #set par(leading: 1.5em)
    #text(font: fonts.main, size: sizes.四号, weight: "bold")[Abstract]
  ]

  v(18pt)

  set text(font: fonts.main, size: sizes.小四, top-edge: 0.7em, bottom-edge: -0.3em)

  set par(first-line-indent: (amount: 2.5em, all: true), leading: 1em)

  context abstract-en-content.final()

  block(above: 1.5 * 1.5em, below: 1.5 * 1.5em)[
    #set par(first-line-indent: (amount: 0pt, all: true), leading: 1em)
    #text(size: sizes.小四, weight: "bold")[Keywords: ]
    #text(
      size: sizes.小四,
    )[#context abstract-en-keywords.final()]
  ]
}
