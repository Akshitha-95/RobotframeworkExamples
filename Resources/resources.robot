*** keywords ***
launchBrowser
        [Arguments]     ${appurl}   ${appbrowser}
        open browser    ${appurl}  ${appbrowser}
        maximize browser window
        ${title}=   get title
        [Return]    ${title}