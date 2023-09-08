*** Settings ***
Resource    ../imports.robot


*** Keywords ***
Visit page
    [Arguments]    ${url}    ${browser}
    Open browser    ${url}    ${browser}
    Maximize Browser Window

Click Add customer
    [Arguments]    ${locator}
    Click element    ${locator}

Click background check
    [Arguments]    ${locator}
    Click element    ${locator}

Input firstName
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Input lastName
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Input Email
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Input address
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Input mobile number
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Click button Submit
    [Arguments]    ${locator}
    Click element    ${locator}

Back to Home
    [Arguments]    ${locator}
    Click element    ${locator}

Visit page Add Tariff Plan to Customer
    [Arguments]    ${locator}
    Click element    ${locator}

Input customerID
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}
