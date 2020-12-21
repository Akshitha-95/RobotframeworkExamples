*** settings ***
Library     SeleniumLibrary
Resource    ../Resources/loginkeywords.robot

*** variables ***
${browser}      Chrome
${siteurl}      https://www.amazon.in/gp/css/homepage.html?ref_=nav_youraccount_btn
${no}           8971097282
${pwd}          Akshitha1234

*** test cases ***
Logintest
        open my browser     ${siteurl}  ${browser}
        Enter number        ${no}
        Click continue
        Enter password      ${pwd}
        Click signin
        close my browser