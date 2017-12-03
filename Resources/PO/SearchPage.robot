*** Settings ***
Library  Selenium2Library


*** Variables ***



*** Keywords ***



Verify page loaded
    [Arguments]  ${TERM}
    wait until page contains  ${TERM}
    sleep  5