*** Settings ***
Resource    ../import_exam.robot


*** Keywords ***
Mở trang web bằng trình duyệt add project
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Nhập thông tin log in
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    ${inp_email}
    Input Text    ${inp_email}    ${email}
    Input Text    ${inp_pass}    ${password}
    Click Element    ${btn_submit}

Tạo project Automation_MSB_Project
    [Arguments]    ${name_project}
    Wait Until Element Is Visible    ${label_projects}
    Mouse Over    ${label_projects}
    Wait Until Element Is Visible    ${btn_addpj}    15s
    Click Element    ${btn_addpj}
    Wait Until Element Is Visible    ${inp_name}
    Input Text    ${inp_name}    ${name_project}
    Click Element    ${btn_submit}

Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[text() = '${text}']    15s
    Close Browser

Mở trang web bằng trình duyệt add task
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tạo task trong project
    [Arguments]    ${name_task}
    Wait Until Element Is Visible    ${lbl_project}    15s
    Click Element    ${btn_addtask}
    Wait Until Element Is Visible    ${inp_taskname}    5s
    Input Text    ${inp_taskname}    ${name_task}
    Sleep    2s
    Click Element    ${btn_addtask1}