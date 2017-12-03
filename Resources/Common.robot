*** Settings ***
Library  Selenium2Library


*** Variables ***


*** Keywords ***

Starting Web Test
    open browser  about:blank  ${BROWSER}
    maximize browser window


End Web Test
    close browser

