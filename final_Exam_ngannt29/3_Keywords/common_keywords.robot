*** Settings ***
Resource    ../../import_exam.robot


*** Keywords ***
Open web
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Login web todolist success
    [Arguments]    ${txt_emaildata}    ${txt_passdata}    ${timeout}
    Wait Until Element Is Visible    ${txt_email}    ${timeout}
    Input Text    ${txt_email}    ${txt_emaildata}
    Input Password    ${txt_password}    ${txt_passdata}
    Click Button    ${btn_login}
    Wait Until Element Is Visible    ${txt_verfyLoginSuccess}    ${timeout}
