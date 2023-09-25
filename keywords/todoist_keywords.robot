*** Settings ***
Resource    ../elements/todoist_elements.robot
Library     SeleniumLibrary


*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Đăng nhập Todoist với
    [Arguments]    ${email}    ${pass}
    Wait Until Element Is Visible    ${input_email}
    Input Text    ${input_email}    ${email}
    Input Password    ${input_pass}    ${pass}
    Click Button    ${btn_login}

Click menu project
    Wait Until Element Is Visible    ${click_link_prj}
    Click Element    ${click_link_prj}
    Wait Until Element Is Visible    ${btn_quick_add_prj}
    Click Element    ${btn_quick_add_prj}

Tạo một project có tên
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${input_name_prj}
    Input Text    ${input_name_prj}    ${value}
    Wait Until Element Is Visible    ${btn_add_prj}    2s
    Click Element    ${btn_add_prj}

Verify Project đã tạo với tên
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h1//span[contains(text(),'${text}')]

Nhấn nút tạo task trong project
    Wait Until Element Is Visible    ${btn_plus_add_task}
    Click Button    ${btn_plus_add_task}

Tạo task có tên
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${input_name_task}    2s
    Input Text    ${input_name_task}    ${value}
    Wait Until Element Is Visible    ${btn_add_task}    2s
    Click Button    ${btn_add_task}

Verify task đã tạo với tên
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[@class="task_content"][contains(text(),'${text}')]    3s
    Close Browser
