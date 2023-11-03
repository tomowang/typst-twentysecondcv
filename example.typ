#import "twentysecondcv.typ": *

#set text(font: "PT Sans")

#main(
  [
    #profile(
      name: "Xiaoliang Wang",
      jobtitle: lorem(3),
    )

    #show_contacts(
      (
        (
          icon: "linkedin",
          fa-set: "Brands",
          text: "https://www.linkedin.com/in/someone",
        ),
        (
          icon: "github",
          fa-set: "Brands",
          text: "https://github.com/tomowang",
        ),
        (
          icon: "globe",
          fa-set: "Free Solid",
          text: "https://tomo.dev",
        ),
        (
          icon: "phone",
          fa-set: "Free Solid",
          text: link("tel:+86 123 456 78999")[+86 123 456 78999],
        ),
        (
          icon: "envelope",
          fa-set: "Free Solid",
          text: "some@example.com",
        ),
      )
    )

    #profile_section("Skills")
    #align(center, image("images/skills.png", width: 80%))

    #profile_section("Interests")
    #show_interests((
      (
        interest: lorem(2),
        score: 1,
      ),
      (
        interest: lorem(2),
        score: 0.8,
      ),
      (
        interest: lorem(2),
        score: 0.75,
      ),
      (
        interest: lorem(2),
        score: 0.5,
      ),
    ))

    #profile_section("Languages")
    #image("images/languages.png")
  ],
  [
    #body_section("Education")
    #twentyitem(
      period: [
        Sep. 2007 - \
        Jun. 2011
      ],
      title: lorem(4),
      note: link("http://www.nju.edu.cn/")[Nanjing University],
      addtional_note: lorem(3),
      body: lorem(30)
    )
    #body_section("Experience")
    #twentyitem(
      period: [
        Oct. 2017 - \
        Now
      ],
      title: lorem(4),
      note: lorem(1),
      body: list(
        lorem(20),
        lorem(20),
        lorem(20),
      )
    )
    #twentyitem(
      period: [
        Mar. 2016 - \
        Oct. 2017
      ],
      title: lorem(4),
      note: lorem(1),
      body: list(
        lorem(20),
        lorem(20),
        lorem(20),
      )
    )
    #twentyitem(
      period: [
        Jul. 2011 - \
        Mar. 2016
      ],
      title: lorem(4),
      note: lorem(1),
      body: list(
        lorem(20),
        lorem(20),
      )
    )
    #body_section("Certificate")
    #twentyitem(
      period: [2017-02-22],
      title: "Machine Learning",
      note: link("https://www.coursera.org/")[Coursera],
      body: ""
    )
    #twentyitem(
      period: [2018-07-10],
      title: "Professional Data Engineer",
      note: link("https://www.credential.net/")[Google Cloud],
      body: ""
    )
    #twentyitem(
      period: [2019-12-31],
      title: "AWS Certified Big Data - Specialty",
      note: link("https://aws.amazon.com/verification")[AWS],
      body: ""
    )
  ]
)
