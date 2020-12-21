*** settings ***
Library     SeleniumLibrary
Resource   ../Resources/loginresources.robot
Suite Setup     Open my browser
Suite Teardown      Close browsers
Test Template       Invalid login

*** test cases ***      username                 password
Right user empty pass   admin@yourstore.com     $[EMPTY}
Right user wrong pass   admin@yourstore.com     xyz
Wrong user right pass   adm@yourstore.com       admin
Wrong user empty pass   adm@yourstore.com       ${EMPTY}
Wrong user wrong pass   adm@yourstore.com       adminasd

*** keywords ***
Invalid login
        [Arguments]     ${username}     ${password}
        Input username  ${username}
        Input pwd   ${password}
        click login button
        Error message should be visible