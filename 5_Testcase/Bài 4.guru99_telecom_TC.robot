*** Settings ***
Resource    ../6_Report/import.robot
Resource    ../3_Keywords/Bài 4.guru99_telecom_keywords.robot

Test Setup    Open Webpage   https://demo.guru99.com/telecom/index.html
Test Teardown    Close Browser

*** Variables ***
${timeout}    20s

** Test Cases **
[TCs_01] - Thêm thông tin gói cước telecom
    [Documentation]    Thêm thông tin gói cước telecom 
    [Tags]    demo.guru99.com/telecom
    Find and select Element    ${a_Add_Customer}    ${timeout}
    Reload Page
    Find and select Element    ${a_Add_Customer}    ${timeout}
    Check element form    ${inp_BGC}    ${timeout}
    Find and select Element    ${inp_BGC}    ${timeout}
    ${fname}=    Set Variable    hang
    ${lname}=    Set Variable    anh
    ${email}=    Set Variable    hanganh@gmail.com
    ${address}=    Set Variable    hanoi
    ${phone}=    Set Variable    0322222222
    Input form Billing address    
    ...    ${inp_fname}    
    ...    ${fname}    
    ...    ${inp_lname}    
    ...    ${lname}    
    ...    ${inp_email}    
    ...    ${email}    
    ...    ${inp_address}    
    ...    ${address}    
    ...    ${inp_phone}    
    ...    ${phone}
    Find and select Element    ${btn_submit}    ${timeout}
    Get Customer ID    ${customer_id}
    Find and select Element    ${btn_home}    ${timeout}
    Find and select Element    ${a_ATB_Customer}    ${timeout}
    Set Customer ID    ${inp_customerid}
    Find and select Element    ${btn_submit2}    ${timeout}
    Verify result    ${text_Approved}    ${timeout}


