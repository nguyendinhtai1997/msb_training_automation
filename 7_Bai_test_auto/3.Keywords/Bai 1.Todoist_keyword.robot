*** Settings ***
Resource    ../2.Element/Bai 1.Todoist_element.robot
Library   SeleniumLibrary

*** Keywords ***
Check element
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
Input form login
    [Arguments]
    ...    ${locator_email}
    ...    ${value_email}
    ...    ${locator_pwd}
    ...    ${value_pwd}
    Input Text    ${locator_email}    ${value_email}
    Input Password    ${locator_pwd}    ${value_pwd}
Login
    [Arguments]    ${locator}
    Click Element    ${locator}
Hover Item
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Mouse Over    ${locator}
Click Item
    [Arguments]    ${locator}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Click Element    ${locator}
Input text to locator
    [Arguments]    ${locator}    ${value}    ${timeout}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Input Text    ${locator}    ${value}