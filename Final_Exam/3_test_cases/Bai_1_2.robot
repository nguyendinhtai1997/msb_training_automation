*** Settings ***
Resource            ../import_exam.robot

Test Setup          Access to Todoist login page
Test Teardown       Close Browser


*** Test Cases ***
Bai_1
    [Documentation]    Add new project on Todoist
    [Tags]    add_project
    Input email and password    daonhanktdn@gmail.com    12345678Aa
    Click Login button
    Open Left menu on Home page
    Click Add Project button
    Input Project infomation    Automation_MSB_Project
    Click Submit Add Project button
    Verify add porject successfuly with correct inputed information

Bai_2
    [Documentation]    Add new task on Todoist
    [Tags]    add_task
    Input email and password    daonhanktdn@gmail.com    12345678Aa
    Click Login button
    Open Left menu on Home page
    Select added project
    Select add new task button
    Input task information    Automation_MSB_Task
    Click submit add new task button
    Verify add task successfully with correct inputed information
