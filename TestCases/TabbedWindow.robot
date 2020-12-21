*** settings ***
Library     SeleniumLibrary

*** variables ***


*** test cases ***
Tabbedwindows Test
        open browser    http://demo.automationtesting.in/Windows.html     Chrome
        maximize browser window

        click element    xpath://*[@id="Tabbed"]/a/button
        select window   title=SeleniumHQ Browser Automation
        click element   xpath://*[@id="navbar"]/a[1]
        sleep   3
        close all browsers