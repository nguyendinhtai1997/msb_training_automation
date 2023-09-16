*** Keywords ***
Visit page
    [Arguments]    ${url}    ${browser}
    Open browser    ${url}    ${browser}
    Maximize Browser Window

Input email
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Input password
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Click button Login
    [Arguments]    ${locator}
    Click element    ${locator}

Click button Add task
    [Arguments]    ${locator}
    Click element    ${locator}

Input task name
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Click Add task 
    [Arguments]    ${locator}
    Click element    ${locator}