*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}  https://admin-demo.nopcommerce.com/

*** keywords ***
Open my browser
        open browser   ${url}  ${browser}
        maximize browser window

Close browsers
        close all browsers

Open login page
        go to   ${loginurl}

Input username
        [Arguments]     ${username}
        input text      id:Email    ${username}

Input pwd
        [Arguments]     ${password}
        input text      id:Password     ${password}

Click login button
        click element   xpath://input[@class='button-1 login-button']

Click logout link
        click link      Logout

Error message should be visible
        page should contain     Login was unsuccessful

Dashboard page should be visible
        page should contain     Dashboard