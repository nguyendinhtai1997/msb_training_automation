*** Settings ***
Resource    ../import.robot


*** Keywords ***
Input search keyword
    [Arguments]    ${locator}    ${value}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Input Text    ${locator}    ${value}

Search keyword
    [Arguments]    ${locator}
    Press Keys    ${locator}    ENTER

Choice first result
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}

Close popup
    [Arguments]    ${locator}    ${script}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Execute JavaScript    ${script}
