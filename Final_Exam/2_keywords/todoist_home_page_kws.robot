*** Settings ***
Resource    ../import_exam.robot


*** Keywords ***
Open Left menu on Home page
    Wait Until Element Is Visible    ${btn_open_menu}    15s
    Click Element    ${btn_open_menu}

Click Add Project button
    Click Element    ${btn_add_project}

Input Project infomation
    [Arguments]    ${prj_name}
    Wait Until Element Is Visible    ${lb_add_project_name}
    Input Text    ${lb_add_project_name}    ${prj_name}
    Set Global Variable    ${project_name}    ${prj_name}

Click Submit Add Project button
    Click Element    ${btn_submit_add_project}

Verify add porject successfuly with correct inputed information
    Wait Until Element Is Visible    ${lb_project_name}
    ${value} =    Get Text    ${lb_project_name}
    Should Be Equal    ${project_name}    ${value}

Select added project
    Click Element    ${btn_msb_training_prj}

Select add new task button
    Click Element    ${btn_add_task}

Input task information
    [Arguments]    ${input_task_name}
    Wait Until Element Is Visible    ${lb_add_task_name}    20
    Input Text    ${lb_add_task_name}    ${input_task_name}
    Set Global Variable    ${task_name}    ${input_task_name}

Click submit add new task button
    Sleep    2
    Click Element    ${btn_submit_add_task}

Verify add task successfully with correct inputed information
    Wait Until Element Is Visible    ${list_task}
    ${value} =    Get Text    ${list_task}
    Should Be Equal    ${task_name}    ${value}
