*** settings ***
Library     SeleniumLibrary

*** variables ***
${browser}  Chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** test cases ***
Testing Frames
        open browser    ${url}  ${browser}
        maximize browser window

        select frame    packageListFrame  #id name xpath
        click link  org.openqa.selenium
        unselect frame
        sleep   3

        select frame    packageFrame
        click link  WebElement
        unselect frame
        sleep   3

        select frame    classFrame
        click link  Help
        sleep   3

        close browser