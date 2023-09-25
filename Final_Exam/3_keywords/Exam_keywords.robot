*** Settings ***
Resource    ../8_imports/imports_exam.robot


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

Tạo Project trong Web Todoist
    [Arguments]    ${name_PJ}
    Click Button    ${btn_add_Project}
    Wait Until Element Is Visible    ${inp_name_Project}
    Input Text    ${inp_name_Project}    ${name_PJ}
    Click Button    ${btn_add_Project}

Verify Project với text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //span[text() = "${text}"]    10s
