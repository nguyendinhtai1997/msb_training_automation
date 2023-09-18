*** Settings ***
Resource    ${EXECDIR}/import_exam.robot

*** Keywords ***
Add task
    [Arguments]    ${nameTask}    ${timeout}
    Click Button    ${btn_addTask}
    Input Text    ${txt-taskname}    ${nameTask}
    Wait Until Element Is Visible    ${btn_addTaskin}    ${timeout}
    Click Button    ${btn_addTaskin}
    ${task_cre}    Get Text    ${task_c}
    Set Test Variable    ${newestTask}    ${task_cre}

Verify create task successs
    [Arguments]    ${nameTask}
    Should Be Equal As Strings    ${newestTask}    ${nameTask}
