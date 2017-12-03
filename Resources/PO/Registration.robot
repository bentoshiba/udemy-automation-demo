*** Settings ***
Library  Selenium2Library
Library  Collections

*** Variables ***



*** Keywords ***


Fill in email
    [Arguments]  ${EMAIL}
    input text  id_email  ${EMAIL}

Fill in password
    [Arguments]  ${PASSWORD}
    input text  id_password  ${PASSWORD}
    sleep  3

Fill in fullname
    [Arguments]  ${NAME}
    input text  id_fullname  ${NAME}
    sleep  5
