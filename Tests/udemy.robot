*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/Udemyapp.robot
Library  Collections
Test Setup  Starting Web Test
Test Teardown  End Web Test

*** Variables ***

&{CHINESE_USER}  firstname=yao  lastname=ming  email=yaomingthetall@gmail.com  password=yaomingistall
&{IRISH_USER}  firstname=conor  lastname=mcdonald  email=irishusermcdonald@gmail.com  password=thefightingirish
${ALL_USERS} =  create dictionary  usergroups  '${CHINESE_USER}'  '${IRISH_USER}'

&{URL} =  dev=http://www.udemy.com  qa=http://google.com  prod=http://codeacademy.com
${BROWSER} =  chrome
${ENVIRONMENT} =  dev
${SEARCH_TERM} =  management
${VERIFICATION_TERM} =  How was your search
*** Keywords ***

*** Test Cases ***

User can reach the landing page
    [Tags]  smoke  sanity monday
    Udemyapp.Load landing page

User can register a new account successfully
    [Tags]  current
    Udemyapp.Load landing page
    Udemyapp.Register a new account  ${CHINESE_USER}

Geographical user can register a new account
    [Tags]  geographical
    Udemyapp.Load landing page
    Udemyapp.Register a new account  ${IRISH_USER}


User can add a course cart
    [Tags]  search
    Udemyapp.Load landing page
    Udemyapp.Add course to cart  ${SEARCH_TERM}  ${VERIFICATION_TERM}



Print out the dictionary values
    [Tags]  printing
    log  ${CHINESE_USER.firstname} ${CHINESE_USER.lastname}
    Set To Dictionary  ${CHINESE_USER}  fullname=${CHINESE_USER.firstname} ${CHINESE_USER.lastname}
    log  ${CHINESE_USER.fullname}


Print out the all dictionary
    [Tags]  practice
    log  ${ALL_USERS}

New keyword from a new user
    log  I am a keyword
