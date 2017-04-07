*** Settings ***
Library  Selenium2Library


*** Variables ***
${BROWSER} =  chrome



*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End Web Test
    close browser