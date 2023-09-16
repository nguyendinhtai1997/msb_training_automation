*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${brower}   Firefox
${Shared_Variable}   Initial Value

*** Keywords ***
Open Webpage
    [Arguments]    ${url}
    Open Browser    ${url}    ${brower}

Verify result
    [Arguments]    ${text}    ${timeout}
    Wait Until Element Is Visible    ${text}    ${timeout}
    Page Should Contain Element    ${text}

Set Shared Variable
    [Arguments]    ${value}
    Set Global Variable    ${Shared_Variable}    ${value}

Get Shared Variable
    [Return]    ${Shared_Variable}

Click Item
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}
    
Input text to locator
    [Arguments]    ${locator}    ${value}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Input Text    ${locator}    ${value}