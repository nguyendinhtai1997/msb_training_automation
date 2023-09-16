*** Settings ***
Resource    ../2_elements/bai2_todoist_element.robot
Library     SeleniumLibrary

*** Keywords ***
Mở trang web bằng trình duyệt add task
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Nhập thông tin log in 1
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    ${inp_email1}    5s
    Input Text    ${inp_email1}    ${email}
    Input Text    ${inp_passs1}    ${password}
	Click Element    ${btn_submit}
Tạo task trong project
    [Arguments]     ${name_task}
	Wait Until Element Is Visible    ${lbl_project}    15s
	Click Element     ${btn_addtask}
    Wait Until Element Is Visible    ${inp_taskname}    5s
	Input Text    ${inp_taskname}    ${name_task}
	Click Element     ${btn_addtask1}
Xác nhận popup chứa text 1
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[contains(text(),'{${text}}')]  15s 
    Close Browser
