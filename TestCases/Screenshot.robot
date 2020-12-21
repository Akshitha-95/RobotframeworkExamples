*** settings ***
Library     SeleniumLibrary

*** variables ***


*** test cases ***
Screenshot Test
        open browser    https://accounts.google.com/signup/v2/webcreateaccount?hl=en&flowName=GlifWebSignIn&flowEntry=SignUp     Chrome
        maximize browser window
        input text  id:firstName    Akshitha
        input text  id:lastName     K V

        capture element screenshot  xpath://*[@id="initialView"]/div[2]/div[2]/div/figure/img   logo.png
        capture page screenshot  login.png

        close browser