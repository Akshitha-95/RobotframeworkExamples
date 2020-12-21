*** settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot

*** variables ***
${browser}  Chrome
${url}  https://accounts.google.com/signup/v2/webcreateaccount?hl=en&flowName=GlifWebSignIn&flowEntry=SignUp

*** test cases ***
Userdefinedkeywords
        ${PageTitle}=   launchBrowser   ${url}  ${browser}
        log to console  ${PageTitle}
        log     ${PageTitle}
        input text  name:firstName     Anjali
        input text  name:lastName      K V
        sleep   3

        close browser


