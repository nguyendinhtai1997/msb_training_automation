*** Settings ***
Resource    ../imports.robot


*** Keywords ***
Truy cap guru
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Chon Add Customer
    [Arguments]    ${add_cus}
    Wait Until Element Is Visible    ${add_cus}    10
    Click Element    ${add_cus}
    Reload Page
    Wait Until Element Is Visible    ${add_cus}    10s
    Click Element    ${add_cus}

Nhap thong tin khach hang
    [Arguments]    ${fname}    ${lname}    ${email}    ${address}    ${mphone}
    Click Element    ${checkdone}
    Input Text    ${firstname}    ${fname}
    Input Text    ${lastname}    ${lname}
    Input Text    ${mail}    ${email}
    Input Text    ${addr}    ${address}
    Input Text    ${phone}    ${mphone}
    Click Button    ${submit}

Lay Customer ID
    ${customer_id}    Get Text    //td[@align = 'center']/h3
    Set Suite Variable    ${cus_id}    ${customer_id}

Click Home
    [Arguments]    ${btn_home}
    Click Element   ${btn_home}

Click Add Tariff Plan to Customer
    [Arguments]    ${tariff}
    Wait Until Element Is Visible    ${tariff}    10s
    Click Element    ${tariff}
Nhap Customer ID vua tao
    [Arguments]    ${id_input}    ${cus_id}
    Input Text    ${id_input}    ${cus_id}
Click Submit
    [Arguments]    ${btn_submit}
    Click Button    ${btn_submit}
Kiem tra text hien thi "Approved Tariff Plans"
    [Arguments]    ${text_approved}
    Wait Until Element Is Visible    //section[@id='main']//h2[text()='${text_approved}']    5s