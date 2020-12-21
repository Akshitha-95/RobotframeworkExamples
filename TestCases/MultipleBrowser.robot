*** settings ***
Library     SeleniumLibrary

*** variables ***


*** test cases ***
MultipleBrowser Test
        open browser    https://www.google.com/     Chrome
        maximize browser window
        #sleep   3

        open browser    https://www.bing.com/     Chrome
        maximize browser window

        switch browser  1
        ${tittle1}=     get title
        log to console  ${tittle1}

        switch browser  2
        ${tittle2}=     get title
        log to console  ${tittle2}
        #sleep   3

        close all browsers