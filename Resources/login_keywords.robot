*** Settings ***
Library           SeleniumLibrary
Library           PageObjects/login_page.py

*** Variables ***
${LOGIN_URL}      http://example.com/login

*** Keywords ***
Open Login Page
    [Documentation]    Open the login page in the browser.
    Open Browser    ${LOGIN_URL}    Chrome
    Maximize Browser Window
    Maximize Browser Window

Enter Credentials
    [Arguments]    ${username}    ${password}
    [Documentation]    Enter the username and password into the login form.
    Input Text    ${LoginPage.USERNAME_FIELD}    ${username}
    Input Text    ${LoginPage.PASSWORD_FIELD}    ${password}

Click Login
    [Documentation]    Click the login button.
    Click Button    ${LoginPage.LOGIN_BUTTON} 
