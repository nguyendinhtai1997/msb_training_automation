*** Settings ***
Resource    ../import_exam.robot


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

Click project
    [Arguments]    ${locator}
    Click element    ${locator}

Create task
    [Arguments]    ${locator}
    Click element    ${locator}

Click Go to project
    [Arguments]    ${locator}
    Click element    ${locator}

Click Add Subtask
    [Arguments]    ${locator}
    Click element    ${locator}

Input taskname
    [Arguments]    ${locator}    ${text}
    Input text    ${locator}    ${text}

Click button Add task
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
