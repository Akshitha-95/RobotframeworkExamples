*** settings ***
Library     SeleniumLibrary

*** variables ***


*** test cases ***
Navigation Test
        open browser    https://www.google.com/     Chrome
        maximize browser window
        ${loc}=     get location
        log to console  ${loc}

        go to   https://www.bing.com/
        ${loc}=     get location
        log to console  ${loc}

        go back
        ${loc}=     get location
        log to console  ${loc}

        close browser
