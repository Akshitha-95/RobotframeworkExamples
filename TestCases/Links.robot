*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}  http://newtours.demoaut.com/

*** test cases ***
Countlinks
        open browser   ${url}  ${browser}
        maximize browser window
        ${Alllinkscount}=    get element count   xpath://a
        log to console  ${Alllinkscount}

        @{Linkitem}     create list

        :For    ${i}    IN RANGE    1   ${Alllinkscount}+1
        \   ${linktext}=     get text    xpath:(//a)[${i}]
        \   log to console      ${linktext}

        close browser