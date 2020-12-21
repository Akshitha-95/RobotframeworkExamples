*** settings ***
Library     SeleniumLibrary

*** test cases ***
MouseActions
        #Right click/open context menu
        open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    Chrome
        maximize browser window
        open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
        sleep   3

        #Double click action
        go to   http://testautomationpractice.blogspot.com/
        maximize browser window
        double click element    xpath://*[@id="HTML10"]/div[1]/button
        sleep   3

        #Drag and Drop
        go to   http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
        maximize browser window
        drag and drop   id:box6  id:box106
        sleep   3

        close browser
