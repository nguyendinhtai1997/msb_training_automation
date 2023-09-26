*** Settings ***
Resource    ../import.robot


*** Keywords ***
Check element
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}

Input form login guru99
    [Arguments]
    ...    ${locator_email}
    ...    ${value_email}
    ...    ${locator_password}
    ...    ${value_password}
    Input Text    ${locator_email}    ${value_email}
    Input Password    ${locator_password}    ${value_password}

Login guru99
    [Arguments]    ${locator}
    Click Element    ${locator}
