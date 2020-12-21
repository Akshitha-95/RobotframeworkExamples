*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** test cases ***
Testing Radio Buttons and Check Boxes
        open browser    ${url}  ${browser}
        maximize browser window

        #Selectind Radio Buttons
        select radio button     sex     Female
        select radio button     exp     6

        #Selecting Check Box
        select checkbox     BlackTea
        select checkbox     RedTea
        sleep   3

        unselect checkbox       BlackTea
        sleep   3

        #Selecting element from List
        select from list by label   continents      Australia
        sleep   3
        select from list by index   continents      6
        sleep   3

        #ListBox
        select from list by label   selenium_commands   Switch Commands
        select from list by label   selenium_commands   WebElement Commands
        sleep   3

        unselect from list by label   selenium_commands   Switch Commands
        sleep   3

        close browser