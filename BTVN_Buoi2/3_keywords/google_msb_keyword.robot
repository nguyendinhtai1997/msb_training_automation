*** Settings ***
Resource    ../2_elements/google_msb_element.robot
Library     SeleniumLibrary

*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Tìm kiếm MSB và chọn kết quả đầu tiên
    [Arguments]    ${value}    
    #Wait Until Element Is Visible    ${inp_search}
    Input Text    ${inp_search}    ${value}
    Wait Until Element Is Visible    ${btn_search}
	Click Element    ${btn_search}
	Wait Until Element Is Visible    ${clk_result1}	5s
	Click Element	${clk_result1}
	Wait Until Element Is Visible    ${cls_popup}	5s
	Click Element	${cls_popup}
	
Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //*[contains(text(), "${text}")]    3s 
    Close Browser
