*** Settings ***
Resource  ../Resources/PO/landingpage.robot
Resource  ../Resources/PO/Navbar.robot
Resource  ../Resources/PO/Registration.robot
Resource  ../Resources/PO/SearchPage.robot
*** Variables ***


*** Keywords ***


Load landing page
    Landingpage.navigate to
    Landingpage.verify page loaded


Register a new account
    [Arguments]  ${placeholder}
    Udemyapp.Setup fullname
    Udemyapp.Setup fullname from ireland
    Navbar.click registration button
    Navbar.Verify registration popup
    Registration.fill in email  ${placeholder.email}
    Registration.fill in password  ${placeholder.password}
    Registration.fill in fullname  ${placeholder.fullname}


Setup fullname
    Set To Dictionary  ${CHINESE_USER}  fullname=${CHINESE_USER.firstname} ${CHINESE_USER.lastname}

Setup fullname from ireland
    Set To Dictionary  ${IRISH_USER}  fullname=${IRISH_USER.firstname} ${IRISH_USER.lastname}

Add course to cart
    [Arguments]  ${SEARCH}  ${VERIFICATION}
    Navbar.enter in search  ${SEARCH}
    Navbar.submit a search
    SearchPage.Verify page loaded  ${VERIFICATION}