*** Settings ***
Resource    ../2_elements/guru_telecom_element.robot
Library     SeleniumLibrary

*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Đăng kí khách hàng lưu lại CustomerID
    [Arguments]    ${firstname}    ${lastname}	${email}	${address}	${mbnumber}
    Wait Until Element Is Visible    ${lb_addcustomer}
	Click Element    ${lb_addcustomer}
	Wait Until Element Is Not Visible	${ckb_done}    7s	
	Reload Page
	Click Element    ${lb_addcustomer}
	Wait Until Element Is Visible    ${ckb_done}    20s
	Click Element    ${ckb_done}
	Input Text    ${txb_firstname}    ${firstname}
	Input Text    ${txb_lastname}    ${lastname}
	Input Text    ${txb_email}    ${email}
	Input Text    ${txb_address}    ${address}
	Input Text    ${txb_mblnumber}    ${mbnumber}
    Click Element    ${btn_submit}
    Wait Until Element Is Visible    ${lb_customerId}
	${element_value}    Get Text  ${lb_customerId}
	Log    Giá trị của CustomerID: ${element_value}  
	Click Element    ${btn_home}
    Wait Until Element Is Visible    ${lb_addtariff}
	Click Element    ${lb_addtariff}
	Wait Until Element Is Visible    ${txb_yourcmId}    5s
	Input Text    ${txb_yourcmId}    ${element_value}
	Click Element    ${btn_submit}
Kiểm tra màn hình hiển thị chữ
    [Arguments]    ${text}
    Wait Until Element Is Visible	//h2[contains(text(),'${text}')]	10s 
    Close Browser
