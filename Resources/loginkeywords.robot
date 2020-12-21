*** settings ***
Library     SeleniumLibrary
Variables       ../Pageobjectmodel/Locators.py

*** keywords ***
open my browser
        [Arguments]     ${siteurl}      ${browser}
        open browser    ${siteurl}      ${browser}
        maximize browser window
        click link      ${link}

Enter number
        [Arguments]     ${no}
        Input Text      ${txt_no}     ${no}

Click continue
        click button    ${btn_continue}

Enter password
        [Arguments]     ${password}
        input Text      ${txt_pwd}      ${password}

Click signin
        click button        ${btn_signin}

close my browser
        close all browsers