/*
 * Twenty Seconds Curriculum Vitae in Typst
 * Author: Xiaoliang Wang
 * Date: 2023-08-04
 * License: MIT (see included file LICENSE)
 */

#import "@preview/fontawesome:0.1.0": *

#let headercolor = gray
#let pblue = rgb("#0395DE")
#let gray80 = rgb("#333333") // \color{black!80}
#let sidecolor = rgb("#E7E7E7")
#let mainblue = rgb("#0E5484")
#let maingray = rgb("#B9B9B9")

#let fontSize = (
  tiny: 5pt,
  scriptsize: 7pt,
  footnotesize: 8pt,
  small: 9pt,
  normalsize: 10pt,
  large: 12pt,
  Large: 14pt,
  LARGE: 17pt,
  huge: 20pt,
  Huge: 25pt,
)

#let main(
  left,
  right,
) = {
  set page(
    margin: (
        left: 0cm,
        right: 0cm,
        top: 0cm,
        bottom: 0cm,
    )
  )
  grid(
    columns: (40%, auto),
    rows: 100%,
    // column-gutter: 1em,
    block(
      fill: sidecolor,
      height: 100%,
      pad(
        top: 1cm,
        left: 1cm,
        rest: 0.5cm,
        left
      )
    ),
    block(
      height: 100%,
      pad(
        top: 0.7cm,
        rest: 0.5cm,
        right
      )
    ),
  )
}

#let profile(
  name: "",
  jobtitle: "",
) = {
  text(fill: pblue, size: fontSize.Huge, name) // {\Huge\color{pblue}\cvname}
  linebreak()
  v(2mm)
  text(fill: gray80, size: fontSize.Large, jobtitle) // {\Large\color{black!80}\cvjobtitle}
}

#let profile_section(title) = {
  v(3mm)
  align(left)[
    #text(size: fontSize.huge, fill: gray80)[#title]
    #box(width: 1fr, baseline: -0.5em, line(length: 100%, stroke: gray80))
  ]
}

// score is 1 base
#let progress(score) = {
  box(rect(
    height: 1em,
    width: score * 100%,
    fill: mainblue,
  ))
  box(rect(
    height: 1em,
    width: (1 - score) * 100%,
    fill: maingray,
  ))
}

/*
  interest item is dictionary
  (
    interest: "AI",
    score: 0.6 // 1.0 based percentage
  )
*/
#let show_interests(interests) = {
  set text(size: fontSize.Large, fill: gray80)
  for interest in interests {
    text(interest.interest)
    linebreak()
    progress(interest.score)
  }
}

/*
  contact item is dictionary
  (
    icon: "linkedin",
    fa-set: "Brands", // or "Free" or "Free Solid"
    text: "https://www.linkedin.com/in/someone",
  )
*/
#let show_contacts(contacts) = {
  v(3mm)
  let c = ()
  for contact in contacts {
    c.push(fa-icon(contact.icon, fa-set: contact.at("fa-set", default: "Free"), fill: pblue))
    c.push(contact.text)
  }

  grid(
    columns: (auto, auto),
    column-gutter: 1em,
    row-gutter: 1.5em,
    ..c
  )
}

#let body_section(slice:3, title) = {
  let (header, tailer) = (title.slice(0, slice), title.slice(slice))
  set text(size: fontSize.LARGE)
  block[
    #v(3mm)
    #strong()[
      #text(fill: pblue, header)#text(fill: headercolor, tailer)
    ]
  ]
}

/*
#1 period, like From - To
#2 title
#3 note, basic note
#4 addtional_note
#5 body: the main body
*/
#let twentyitem(
  period: "",
  title: "",
  note: "",
  addtional_note: "",
  body: ""
) = {
  grid(
    columns: (auto, 80%),
    column-gutter: 0.5em,
    period,
    par([
      #block()[
        #strong(title)
        #box(width: 1fr)
        #text(size: fontSize.footnotesize, note)
      ]
      #if (addtional_note.len() > 0) {
        block(addtional_note)
      }
      #body
    ])
  )
}
