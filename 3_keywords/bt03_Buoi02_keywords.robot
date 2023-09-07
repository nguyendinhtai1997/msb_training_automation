*** Settings ***

Library    SeleniumLibrary
Resource    ../2_elements/bt03_Buoi02_element.robot

*** Keywords ***
Mở web Guru bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Add Customer thành công
    [Arguments]    ${firstName}    ${lastName}    ${email}    ${address}    ${phone}
    Wait Until Element Is Visible    ${add_Customer} 
    Click Element    ${add_Customer}
    Wait Until Element Is Visible    ${radio_check}    20s
    Click Element    ${radio_check}    
    Input Text    ${inp_id_fname}    ${firstName}
    Input Text    ${inp_id_lname}    ${lastName}
    Input Text    ${inp_email}    ${email}
    Input Text    ${inp_address}    ${address}
    Input Text    ${inp_phone}    ${phone}
    Click Button    ${btn_Submit}
    Get Text    ${Save_cus_id}
    Click Button    ${btn_Home}

Nhập Customer ID ở Add Tariff Plan    
    Click Element    ${Add_Tariff_Plan}
    Wait Until Element Is Visible    ${customer_id}    10s
    Input Text    ${customer_id}    ${Save_cus_id}
    Click Button    ${submit_customer_id}

Verify màn hình có chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h2[text() = "${text}"]    10s