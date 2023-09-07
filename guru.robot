*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[homework1] - Login Guru
    [Documentation]    Login guru
    [Tags]    homework_guru
    Truy cập guru99.com    https://demo.guru99.com/test/login.html    Chrome
    Nhập username    //input[@id="email"]    taithenhi@gmail.com
    Nhập password    //input[@id="passwd"]    123
    Ấn Login    //button[@id="SubmitLogin"]
    sleep    3s
    Verify text login successfully    Successfully Logged in...


*** Keywords ***
Truy cập guru99.com
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
Nhập username
    [Arguments]    ${email_location}    ${email}
    Input Text    ${email_location}    ${email}
Nhập password
    [Arguments]    ${pw_location}    ${pw}
    Input Text    ${pw_location}    ${pw}
Ấn Login
    [Arguments]    ${login_btn}
    Click Button    ${login_btn}
Verify text login successfully
    [Arguments]    ${login_status_text}
    Wait Until Element Is Visible    //div[@class="error-copy"]//h3[contains(text(),"${login_status_text}")]