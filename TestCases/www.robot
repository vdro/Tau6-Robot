*** Settings ***
Documentation     automationpractice.com - simple tests
Library           SeleniumLibrary
Resource          www_resource.robot

*** Test Cases ***
Navigation
    Open Browser To Main Page
    Go To T-shirts Page
    T-shirts Page Should Be Open
    [Teardown]    Close Browser

Valid_Registration
    Set Selenium Speed     1
    Open Browser To Main Page
    Log In
    Input Create Email    ${VALID EMAIL REGISTER}
    Create Account
    Register Page Should Be Open
    Choose Male Title
    Input FirstName
    Input LastName
    Input RegisterPassword
    Select Day
    Select Months
    Select Yours
    Input Address
    Input City
    Select State
    Input PostCode
    Input Phone
    Submit Account
    My Account Page Should Be Open
    [Teardown]    Close Browser

Valid_Login
    Set Selenium Speed     1
    Open Browser To Main Page
    Log In
    Input Email       ${VALID EMAIL}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    My Account Page Should Be Open
    [Teardown]    Close Browser

Invalid_Login
    Set Selenium Speed     1
    Open Browser To Main Page
    Log In
    Input Email    ${INVALID EMAIL}
    Input Password    ${INVALID PASSWORD}
    Submit Credentials
    Alert Page Should Be Open
    [Teardown]    Close Browser
