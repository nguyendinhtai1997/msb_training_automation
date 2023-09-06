*** Settings ***
Resource    ../2_elements/guru99_element.robot
Resource    ../4_data/data.robot
Library    SeleniumLibrary


*** Keywords ***
Access to guru99 page
    Open Browser    https://demo.guru99.com/telecom/index.html    chrome
    Maximize Browser Window

Select Add customer
    Click Element    ${add_customer}
    Reload Page
    Click Element    ${add_customer}

Input customer information
    [Arguments]    ${fname}    ${lname}    ${email}    ${address}    ${phone_number}
    Wait Until Element Is Visible    ${tf_fname}    5s
    Input Text    ${tf_fname}    ${fname}
    Input Text    ${tf_lname}    ${lname}
    Input Text    ${tf_email}    ${email}
    Input Text    ${tf_address}    ${address}
    Input Text    ${tf_phone_number}    ${phone_number}
    Click Element    ${btn_submit}

Get customer ID
    Wait Until Element Is Visible    ${label_customer_id}
    ${value} =    Get Text     ${label_customer_id}
    Set Global Variable     ${customer_id}    ${value}
    Click Element    ${btn_home}

Goto Add Tariff Plan to Customer
    Click Element    ${add_tariff_plan}
    Input Text    ${tf_customer_id}    ${customer_id}
    Click Element    ${btn_submit}

Verify approved success
    Wait Until Element Is Visible    ${tf_approved}