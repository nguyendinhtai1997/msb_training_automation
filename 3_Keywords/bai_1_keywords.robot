*** Settings ***
Resource    ../import.robot


*** Keywords ***
Input key
    [Arguments]    ${locator}    ${value}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Input Text    ${locator}    ${value}

Select key suggest
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}

Choice product
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}

Buy product
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}
