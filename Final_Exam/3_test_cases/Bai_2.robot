*** Settings ***
Resource    ../import_exam.robot


*** Test Cases ***
[TODOIST_TC_02] - Add new task
    [Documentation]    Add new task on Todoist
    [Tags]    add_task
    Access to Todoist login page
    Input email and password    daonhanktdn@gmail.com    12345678Aa
    Click Login button
    Open Left menu on Home page
    Select added project
    Select add new task button
    Input task information    Automation_MSB_Task
    Click submit add new task button
    Verify add task successfully with correct inputed information