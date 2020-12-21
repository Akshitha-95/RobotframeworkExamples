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
        ${"email_txt"}  set variable    id:ap_email

        element should be visible   ${"email_txt"}
        element should be enabled    ${"email_txt"}

        input text  ${"email_txt"}     8971097282
        clear element text  ${"email_txt"}

        close browser