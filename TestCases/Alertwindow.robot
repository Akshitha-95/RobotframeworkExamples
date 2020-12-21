*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}  http://testautomationpractice.blogspot.com/

*** test cases ***
Handling Alerts
        open browser    ${url}  ${browser}
        maximize browser window

        click element   xpath://*[@id="HTML9"]/div[1]/button  #opens alert
        sleep   3
        #handle alert    accept
        #handle alert    dismiss
        #handle alert    leave  #it keeps alert window open until we close alert window
        alert should be present     Press a button!  #this will specify whether alert window contains this text

        close browser