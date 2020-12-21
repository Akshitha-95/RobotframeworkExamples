*** settings ***
Library     SeleniumLibrary

*** test cases ***
TC1 user registration test
        [Tags]  regression
        log to console  This is user registration test
        log to console  user registration test is over

TC2 logintest
        [Tags]  sanity
        log to console  This is login test
        log to console  login test is over

TC3 change user settings
        [Tags]  regression
        log to console  This is change user settings test
        log to console  change user settings is over

TC4 logouttest
        [Tags]  sanity
        log to console  This logout test
        log to console  logout test is over