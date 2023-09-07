*** Settings ***
Resource    ../2_Elements/Bài 4.guru99_telecom_element.robot
Resource    ../6_Report/import.robot
Library   SeleniumLibrary

*** Variables ***
${key_customerId}    customerId
*** Keywords ***
Find and select Element
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}

Check element form
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}

Input form Billing address
    [Arguments]
    ...    ${locator_fname}
    ...    ${fname}
    ...    ${locator_lname}
    ...    ${lname}
    ...    ${locator_email}
    ...    ${email}
    ...    ${locator_address}
    ...    ${address}
    ...    ${locator_phone}
    ...    ${phone}
    Input Text    ${locator_fname}    ${fname}
    Input Text    ${locator_lname}    ${lname}
    Input Text    ${locator_email}    ${email}
    Input Text    ${locator_address}    ${address}
    Input Text    ${locator_phone}    ${phone}

Get Customer ID
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    ${value}=    Get Text    ${locator}
    [Return]    ${value}

Set Customer ID
    [Arguments]    ${locator}    ${value}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Input Text    ${locator}    ${value}
