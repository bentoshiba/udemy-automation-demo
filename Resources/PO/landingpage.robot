*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***

Navigate to
    go to  ${URL.${ENVIRONMENT}}


Verify page loaded
    wait until page contains  Udemy for Business