#import "../fonts.typ": fonts, sizes

#let acknowledgement-content = state("acknowledgement", [
  致谢应以简短的文字对课题研究与论文撰写过程中曾直接给予帮助的人员(例如指导教师、答疑教师
  及其他人员)表达自己的谢意，这不仅是一种礼貌，也是对他人劳动的尊重，是治学者应当遵循的学
  术规范。内容限一页。
])

#let acknowledgement(
  body,
) = {
  context acknowledgement-content.update(body)
}

#let acknowledgement-page() = {
  // 致谢、附录内容	宋体小四号
  set text(font: fonts.宋体, size: sizes.小四)

  // 致谢、附录标题 黑体三号居中
  show heading.where(level: 1): set text(font: fonts.黑体, size: sizes.小三)

  // 致谢标题不编号
  show heading.where(level: 1): set heading(numbering: none)

  [
    #align(center)[
      #v(1.5em)
      #heading(numbering: none)[谢#h(1em)辞]
      #v(1.5em)
    ]

    #set par(first-line-indent: (amount: 2em, all: true))
    #context acknowledgement-content.final()
  ]
}
