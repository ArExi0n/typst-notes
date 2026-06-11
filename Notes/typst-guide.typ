#set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.1.")
#set par(justify: true, leading: 0.65em)
#show raw: it => block(
  fill: luma(240),
  inset: 8pt,
  radius: 4pt,
  text(font: "JetBrainsMono NF", size: 10pt, it)
)

#align(center)[
  #text(22pt, weight: "bold")[Typst Syntax Guide]
  #v(4pt)
  #text(13pt, fill: luma(90))[A concise reference for the Typst typesetting language]
  #v(2pt)
  #text(10pt, fill: luma(140))[typst.app · v0.11+]
]

#line(length: 100%, stroke: 0.5pt + luma(180))
#v(6pt)

#outline(depth: 2, indent: 1.5em)

#pagebreak()

= Basics

== Markup vs Code Mode

Typst has two modes:

- *Markup mode* — default; write prose directly
- *Code mode* — enter with `#`; run functions and logic

```typst
Hello, *world*!          // markup
#let x = 42             // code
The answer is #x.       // inline code in markup
```

== Comments

```typst
// single-line comment
/* multi-line
   comment */
```

== Escaping

```typst
\*  \#  \\  \_  \~    // escape special chars
```

= Text Formatting

== Inline Styles

```typst
*bold*
_italic_
`monospace`
#underline[underlined]
#strike[strikethrough]
#text(fill: red)[colored text]
#text(size: 14pt)[larger text]
```

== Headings

```typst
= Heading 1
== Heading 2
=== Heading 3
```

== Lists

```typst
// unordered
- item one
- item two
  - nested item

// ordered
+ first
+ second
  + nested

// term list
/ Term: Definition text here.
```

== Links & Labels

```typst
#link("https://typst.app")[Typst]   // hyperlink
<my-label>                          // define label
@my-label                           // reference label
```

= Code Mode

== Variables

```typst
#let name = "Alice"
#let count = 7
#let items = ("a", "b", "c")
```

== Expressions

```typst
#(3 + 4)          // arithmetic → 7
#("hi" + "!")     // string concat → hi!
#(items.len())    // method call → 3
```

== Conditionals

```typst
#if count > 5 [
  Large count.
] else [
  Small count.
]
```

== Loops

```typst
#for item in items [
  - #item
]

#for i in range(1, 4) [
  Row #i
]
```

== Functions

```typst
#let greet(name) = [Hello, *#name*!]

#greet("Bob")
```

Functions with named parameters:

```typst
#let box-it(content, color: blue) = block(
  fill: color,
  inset: 6pt,
  radius: 3pt,
  content
)

#box-it[Important note]
#box-it(color: orange)[Warning]
```

= Types

```typst
// integer
#let a = 10

// float
#let b = 3.14

// string
#let s = "hello"

// boolean
#let flag = true

// array
#let arr = (1, 2, 3)
#arr.at(0)          // → 1
#arr.len()          // → 3

// dictionary
#let d = (name: "Alice", age: 30)
#d.name             // → Alice
#d.at("age")        // → 30

// content
#let c = [Some *markup* content]

// none / auto
#let x = none
#let y = auto
```

= Math

== Inline vs Block

```typst
Inline: $a^2 + b^2 = c^2$

Block:
$ integral_0^oo e^(-x^2) dif x = frac(sqrt(pi), 2) $
```

== Common Syntax

```typst
$x^2$                   // superscript
$x_i$                   // subscript
$frac(a, b)$            // fraction
$sqrt(x)$               // square root
$sum_(i=0)^n i$         // sum
$vec(a, b, c)$          // vector
$mat(1, 0; 0, 1)$       // matrix
$alpha, beta, gamma$    // greek letters
$arrow.r$               // → symbol
```

= Layout

== Page Setup

```typst
#set page(
  paper: "a4",           // or "us-letter", "a5", etc.
  margin: (top: 2cm, bottom: 2cm, x: 2.5cm),
  columns: 2,
  numbering: "1",
  header: [My Header],
  footer: align(center)[#counter(page).display()],
)
```

== Block & Inline Containers

```typst
#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[Block content here]

#box(width: 3cm, height: 1cm, fill: blue)[]

#rect(width: 100%, height: 2pt, fill: gray)
```

== Spacing

```typst
#v(1cm)       // vertical space
#h(0.5cm)     // horizontal space
#parbreak()   // paragraph break
#pagebreak()  // page break
```

== Alignment

```typst
#align(center)[Centered]
#align(right)[Right aligned]
#align(left + bottom)[Bottom-left]
```

== Columns

```typst
#columns(2, gutter: 1cm)[
  Left column content...
  #colbreak()
  Right column content...
]
```

= Tables

```typst
#table(
  columns: (auto, 1fr, 1fr),
  align: (left, center, right),
  stroke: 0.5pt,
  fill: (col, row) => if row == 0 { luma(220) } else { white },
  [*Name*], [*Score*], [*Grade*],
  [Alice],  [95],      [A],
  [Bob],    [82],      [B],
)
```

Grid (no borders by default):

```typst
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [Left],
  [Right],
)
```

= Images & Figures

```typst
#image("photo.png", width: 60%)

#figure(
  image("chart.svg", width: 80%),
  caption: [Monthly revenue],
) <fig-revenue>

See @fig-revenue for details.
```

= Set & Show Rules

`set` changes default parameters for an element.
`show` transforms how an element renders.

```typst
// set rules
#set text(font: "Linux Libertine", size: 12pt)
#set par(justify: true)
#set heading(numbering: "1.a.")
#set list(marker: [→])

// show rules — transform by type
#show heading: it => text(fill: navy, it)

// show rules — transform specific content
#show "Typst": text(weight: "bold")[Typst]

// show rules — apply to selector
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}
```

= State & Counters

```typst
// built-in counter
#counter(page).display()
#counter(heading).display("1.1")

// custom counter
#let my-counter = counter("exercises")
#my-counter.step()
Exercise #my-counter.display().

// state (mutable across document)
#let total = state("total", 0)
#total.update(v => v + 1)
#context total.get()
```

= Imports & Packages

```typst
// import local file
#import "utils.typ": my-func, helper

// import package from typst universe
#import "@preview/cetz:0.2.2": canvas, draw

// import all from a module
#import "styles.typ": *
```

= Scripting Patterns

== While Loop

```typst
#let i = 0
#while i < 3 {
  i += 1
  [Step #i \ ]
}
```

== String Operations

```typst
#let s = "hello world"
#s.len()           // 11
#s.split(" ")      // ("hello", "world")
#s.contains("lo")  // true
#s.replace("o","0") // "hell0 w0rld"
#upper(s)          // HELLO WORLD
```

== Array Operations

```typst
#let a = (3, 1, 4, 1, 5)
#a.sorted()        // (1, 1, 3, 4, 5)
#a.filter(x => x > 2)   // (3, 4, 5)
#a.map(x => x * 2)      // (6, 2, 8, 2, 10)
#a.fold(0, (acc, x) => acc + x)  // 14
```

== Context Expression

Required for accessing document state at render time:

```typst
#context {
  let p = counter(page).get().first()
  if p > 10 [ Long document ] else [ Short document ]
}
```

= Bibliography

```typst
#bibliography("refs.bib", style: "ieee")

// cite in text
@knuth1984      // → [1]  or  Knuth (1984)
#cite(<knuth1984>, supplement: [p. 42])
```

= Quick Reference

#table(
  columns: (1.8fr, 2.5fr),
  stroke: 0.4pt + luma(180),
  fill: (_, row) => if row == 0 { luma(215) } else { white },
  [*Construct*],       [*Syntax*],
  [Bold],              [`*text*`],
  [Italic],            [`_text_`],
  [Code],              [`` `text` ``],
  [Heading],           [`= Title`],
  [Unordered list],    [`- item`],
  [Ordered list],      [`+ item`],
  [Variable],          [`#let x = val`],
  [Function call],     [`#func(arg)`],
  [Inline math],       [`$expr$`],
  [Block math],        [`$ expr $`],
  [Image],             [`#image("f.png")`],
  [Link],              [`#link("url")[text]`],
  [Label],             [`<label>`],
  [Reference],         [`@label`],
  [Page break],        [`#pagebreak()`],
  [Set rule],          [`#set elem(param: val)`],
  [Show rule],         [`#show elem: transform`],
  [Import],            [`#import "f.typ": sym`],
)

#v(1em)
#align(center)[
  #text(9pt, fill: luma(130))[
    Full docs: #link("https://typst.app/docs")[typst.app/docs]
  ]
]
