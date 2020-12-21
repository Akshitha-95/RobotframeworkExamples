*** settings ***
Library     SeleniumLibrary

*** test cases ***
Scrolling Test
        open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    Chrome
        maximize browser window
        #execute javascript  window.scrollTo(0,2500)
        #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img

        execute javascript  window.scrollTo(0,document.body.scrollHeight)   #end of the page
        sleep   3

        execute javascript  window.scrollTo(0,-document.body.scrollHeight)  #start of the page

        close browser
