*** Settings ***
Resource    ../2_elements/bai1_todoist_element.robot
Library     SeleniumLibrary

*** Keywords ***
Mở trang web bằng trình duyệt add project
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Nhập thông tin log in 
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    ${inp_email}
    Input Text    ${inp_email}    ${email}
    Input Text    ${inp_passs}    ${password}
	Click Element    ${btn_submit}
Tạo project Automation_MSB_Project
    [Arguments]    ${name_project} 
	Wait Until Element Is Visible    ${btn_addpj}    15s	
	Click Element	${btn_addpj}
	Wait Until Element Is Visible    ${inp_name}	5s
	Input Text    ${inp_name}    ${name_project}
	Click Element	${btn_submit}
Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[contains(text(),'{${text}}')]  15s 
    Close Browser
