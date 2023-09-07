*** Settings ***
Resource    ../6_Report/import.robot
Resource    ../3_Keywords/Bài 2.Guru_99_keywords.robot

Test Setup    Open Webpage    https://demo.guru99.com/test/login.html
Test Teardown    Close Browser

*** Variables ***
${timeout}    20s

*** Test Cases ***
[TCs_01] - Login Guru 99
    [Documentation]    Login Guru 99
    [Tags]    demo_Guru99_tagro
    ${email}=    Set Variable    hanglt@gmail.com
    ${password}=    Set Variable    hanglt123
    Check element    ${inp_email}    ${timeout}
    Input form login guru99    ${inp_email}    ${email}    ${inp_password}    ${password}
    Login guru99    ${btn_login}
    Verify result    ${verify_text_guru99}    ${timeout}