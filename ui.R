library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Daily horoscope"),
        sidebarPanel(
                dateInput('bd','Please select your birthday',"1971-09-19" ),
                dateInput('pd','Please select date for prediction' ),
                helpText("Note: Just fill the dates with proper values and press the button.",
                         "Application will calculate regarding this data your personal day number"),
                submitButton("Update View"),
                a("Click here to get more Help",href="help.html")
                
        ),
        mainPanel(
                textOutput("dailyHoroscope"),
                h2(textOutput("dailyNumber")),
                helpText("Influence number descriptions"),
                h4(1),
                p("A day for action and purpose. New beginnings are smiled upon on this day. Legal matters, partnerships formed, business deals, and contracts can be promising in this vibratory period. Caveat: Matters are promising only if they are kept simple."),
                h4(2),
                p("A day for balance, weighing decisions, and planning. This period is about harmonizing, and not taking too hasty action. This day may start with disasterous appearances, but will wrap up quite nicely, and will end very well."),
                h4(3),
                p("A day of accomplishment. You will find cooperation where you need it in matters of new projects. Problems are quickly ended. This is a good day for meeting people, travel, and fun."),
                h4(4),
                p("A day for catching up on matters that have fallen to the wayside. Deal with routine issues, and deal with chores accordingly. It may seem boring or redundant, but doing dealing with practical matters will assure order and steadiness in your future."),
                h4(5),
                p("A day to expect the unexpected. This is the wild card of vibrational days. Avoid taking unnecessary risks as they can backfire on you. Travel and new projects may be taken, but they should be taken only if they involve a distinct purpose."),
                h4(6),
                p("A day take take things easy, be comfortable, and rest. Not a day for quick action, excitement or new enterprise. Avoid contact. This is a day of culmination, gather around friends or family and enjoy the moment."),
                h4(7),
                p("A day of deeper meaning. Meditate, study, research, and investigate artistic subjects. Expand your creativity, and intuitive abilities. This is a psychically powerful day; take advantage of it. You may want to play your hunches on this day."),
                h4(8),
                p("A day sweeping change that bring great results. Now is the time to tackle complex issues and conquer difficulties. Today's numbers indicate a good day for business ventures, promising financial turns, and mergers."),
                h4(9),
                p("A day to announce important plans, and make promising contacts. This day promises achievement in most areas of life. Personal growth, triumph and success in competitions are at hand this day.")

        )
))