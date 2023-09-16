*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Open Webpage
    [Arguments]    ${url}
    Open Browser    ${url}    Firefox

Verify result
    [Arguments]    ${text}    ${timeout}
    Wait Until Element Is Visible    ${text}    ${timeout}
    Page Should Contain Element    ${text}