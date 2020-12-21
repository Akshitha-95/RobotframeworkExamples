*** settings ***
Library     SeleniumLibrary
Resource   ../Resources/loginresources.robot
Library     DataDriver  ../Testdata/logindata.csv

Suite Setup     Open my browser
Suite Teardown      Close browsers
Test Template       Invalid login

*** test cases ***
Logintestwithexcel using ${username} and ${password}
*** keywords ***
Invalid login
        [Arguments]     ${username}     ${password}
        Input username  ${username}
        Input pwd   ${password}
        click login button
        Error message should be visible