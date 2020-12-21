*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}  https://accounts.google.com/signup/v2/webcreateaccount?hl=en&flowName=GlifWebSignIn&flowEntry=SignUp

*** test cases ***
Registration check
        ${speed}=   get selenium speed
        log to console  ${speed}
        open browser    ${url}  ${browser}
        maximize browser window
        set selenium speed  3 seconds

        input text  name:firstName     Anjali
        input text  name:lastName      K V
        input text  name:Username       kvanjali95
        input text  name:Passwd       lilly1995
        input text  name:ConfirmPasswd        lilly1995

        close browser