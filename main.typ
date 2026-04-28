#import "templates/thesis.typ": abstract, abstract-en, acknowledgement, authorization, commitment, thesis
#import "templates/utils.typ": three-line-table

#show: thesis.with(
  title: "基于 Typst 的台州学院学位论文模板",
  title-en: "A Thesis Template Based on Typst",
  school: "人工智能学院",
  major: "计算机科学与技术（奇安信）",
  class: "23 计算机奇安信班",
  uid: "2362120000",
  student: "张三",
  advisor: "李四",
  second-advisor: "王五",
  bibliography: bibliography.with("ref.bib"),
)

#authorization(
  confidential: true,
  student-signature: place(
    right + bottom,
    dx: -2.5cm,
    dy: 0.3cm,
    image("assets/signatures/ela.png", height: 30pt),
  ),
  advisor-signature: place(
    right + bottom,
    dx: -2.5cm,
    dy: 0.4cm,
    image("assets/signatures/ela.png", height: 30pt),
  ),
)

= 一级标题1

论文的第一部分是论文的引言，*一般命名为“引言”*，综述课题背景、国内外的研究现状、理论依据、实验基础、发展趋势及本课题所具有的理论意义、实用价值及论文所要解决的问题等内容。

引用他人研究成果时，应注明出处，不得将其与本人的工作混淆在一起。*引文标注采用顺序编码制*。引用文献的标示应置于所引内容最后一个字的右上角，所引文献编号用阿拉伯数字置于方括号“[ ]”中，上角标。要求：

= 一级标题2

#figure(
  three-line-table(
    columns: 3,
    header: ("学号", "姓名", "分数"),
    "001",
    "张三",
    "95",
    "002",
    "李四",
    "88",
    "003",
    "王五",
    "92",
  ),
  caption: [我在这里],
)

#text(font: "SimSun")[宋体]

#text(font: "SimSun", weight: "bold")[宋体加粗]

saoewhfoeuw 卧槽尼玛 @丁文祥2000

== 二级标题1

=== 三级标题1

=== 三级标题2

== 二级标题2

= 一级标题3

#acknowledgement[
  这是致谢内容
]

#commitment(
  signature: place(
    right + bottom,
    dx: -0.5cm,
    dy: 0.3cm,
    image("assets/signatures/ela.png", height: 50pt),
  ),
)
