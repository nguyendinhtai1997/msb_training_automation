*** Settings ***
Library    SeleniumLibrary

Resource    ../2_elements/Bai_01_element.robot

*** Keywords ***
Mở trang Todoist bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Login thành công bằng email/pass
    [Arguments]    ${email}    ${pass}
    Input Text    ${inp_email}    ${email}
    Input Password    ${inp_pass}    ${pass}
    Click Button    ${btn_login}

Tạo Project trong Web Todoist
    [Arguments]    ${name_PJ}
    Click Button    ${btn_add_Project}
    Wait Until Element Is Visible    ${inp_name_Project}
    Input Text    ${inp_name_Project}    ${name_PJ}
    Click Button    ${btn_add_Project}

Verify Project với text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //span[text() = "${text}"]    10s