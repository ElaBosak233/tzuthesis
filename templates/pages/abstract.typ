#import "@preview/cuti:0.4.0": show-cn-fakebold

#import "../fonts.typ": fonts, sizes

#let default-abstract-content = [
  一般不超过300个汉字。内容应包括课题设计意义、完成的主要工作、形成的重要结论等。语言力求精炼，突出论文的主要成果及创新性。
]

#let abstract-content = state("abstract", default-abstract-content)

#let default-abstract-keywords = (
  "数据库技术",
  "人工智能",
  "数据分析与处理",
  "语义分析",
)

#let abstract-keywords = state("abstract-keywords", default-abstract-keywords.join("；"))

#let abstract(
  body: default-abstract-content,
  keywords: default-abstract-keywords,
) = {
  context abstract-content.update(body)
  context abstract-keywords.update(keywords.join("；"))
}

#let abstract-page() = {
  show: show-cn-fakebold

  set page(numbering: "I")

  align(center)[
    #set par(leading: 1.5em)
    #text(font: fonts.黑体, size: sizes.小四, weight: "bold")[摘#h(1em)要]
  ]

  v(18pt)

  set text(font: (fonts.main, fonts.宋体), size: sizes.小四, lang: "zh", top-edge: 0.7em, bottom-edge: -0.3em)

  set par(first-line-indent: (amount: 2em, all: true), leading: 1em)

  context abstract-content.final()

  block(above: 1.5 * 1.5em, below: 1.5 * 1.5em)[
    #set par(first-line-indent: (amount: 0pt, all: true), leading: 1em)
    #text(font: fonts.黑体, size: sizes.小四, weight: "bold")[关键词：]
    #text(font: (fonts.main, fonts.宋体), size: sizes.小四)[#context abstract-keywords.final()]
  ]
}
