*** Settings ***
Resource    ${EXECDIR}/import_exam.robot

Test Setup    Open web    https://todoist.com/auth/login    chrome
Test Teardown       Close Browser

*** Test Cases ***
[TC_01] addTask
    [Documentation]    Add task success
    [Tags]    addtask_success
    Login web todolist success    dieungan27101998@gmail.com    Ngan123@    15s
    Add project    Automation_MSB_Project    7    10s
    Verify create project successs    Automation_MSB_Project
    Add task    Automation_MSB_Task    10s
    Verify create task successs    Automation_MSB_Task
