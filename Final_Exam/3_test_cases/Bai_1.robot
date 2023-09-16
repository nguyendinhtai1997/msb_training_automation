*** Settings ***
Resource    ../import_exam.robot


*** Test Cases ***
[TODOIST_TC_01] - Add new project
    [Documentation]    Add new project on Todoist
    [Tags]    add_project
    Access to Todoist login page
    Input email and password    daonhanktdn@gmail.com    12345678Aa
    Click Login button
    Open Left menu on Home page
    Click Add Project button
    Input Project infomation    Automation_MSB_Project
    Click Submit Add Project button
    Verify add porject successfuly with correct inputed information
