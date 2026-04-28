#let three-line-table(
  columns: 3,
  header: (),
  ..body,
) = {
  set text(
    top-edge: 0.9em,
    bottom-edge: 0em,
  )
  table(
    columns: (1fr,) * columns, // 自动占满 100% 宽度并平分列
    stroke: none,
    inset: (x: 8pt, y: 10pt),

    align: (col, row) => {
      if row == 0 {
        center + horizon
      } else {
        left + horizon
      }
    },

    table.hline(y: 0, stroke: 1.5pt),
    ..header.map(it => [ #it ]),
    table.hline(y: 1, stroke: 0.5pt),
    ..body,
    table.hline(stroke: 1.5pt),
  )
}
