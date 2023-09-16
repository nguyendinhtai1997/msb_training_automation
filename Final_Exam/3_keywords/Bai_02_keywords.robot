*** Settings ***
Library    SeleniumLibrary

Resource    ..//2_elements/Bai_02_element.robot

*** Keywords ***
Mở trang Todoist
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Login thành công
    [Arguments]    ${email}    ${pass}
    Input Text    ${inp_email}    ${email}
    Input Password    ${inp_pass}    ${pass}
    Click Button    ${btn_login}

Tạo Task trong Project
    [Arguments]    ${name_task}
    Click Element    ${project}
    Click Button    ${Add_task}
    Input Text    ${inp_name_task}    ${name_task}
    Click Button    ${btn_Add_task}  

Verify Task với text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[text() = "${text}"]    10s