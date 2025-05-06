*** Settings ***
Resource          ../Resources/login_keywords.robot
Library           ExcelLibrary

*** Variables ***
${EXCEL_FILE}     ../TestData/login_data.xlsx
${SHEET_NAME}     LoginData

*** Test Cases ***
Valid Login
    [Documentation]    Test valid login with correct credentials.
    Open Login Page
    ${username}    ${password} =    Get Login Data    1
    Enter Credentials    ${username}    ${password}
    Click Login
    Sleep    10s
    # Add verification steps here

Invalid Login
    [Documentation]    Test invalid login with incorrect credentials.
    Open Login Page
    ${username}    ${password} =    Get Login Data    2
    Enter Credentials    ${username}    ${password}
    Click Login
    # Add verification steps here

*** Keywords ***
Get Login Data
    [Arguments]    ${row}
    [Documentation]    Retrieve login data from Excel.
    ${data} =    Read Row From Excel    ${EXCEL_FILE}    ${SHEET_NAME}    ${row}
    [Return]    ${data[0]}    ${data[1]} 