*** Settings ***
Library  Selenium2Library


*** Variables ***



*** Keywords ***


Click registration button
    click link  Sign Up

Verify registration popup
    wait until page contains  Sign Up and Start Learning!

Enter in search
    [Arguments]  ${COURSE}
    Input Text  q  ${COURSE}

Submit a search
    click button  xpath=//button[@type='submit']
    sleep  5

Log the results
    log  hello
