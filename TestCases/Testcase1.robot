*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}  https://www.amazon.in/

*** test cases ***
LoginTest
        open browser    ${url}  ${browser}
        maximize browser window
        click link  xpath://*[@id="nav-link-accountList"]
        input text  id:ap_email      8971097282
        click element   xpath://*[@id="continue"]
        input text  id:ap_password      Akshitha1234
        click element   xpath://*[@id="signInSubmit"]
        close browser


