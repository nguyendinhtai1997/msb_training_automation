*** Settings ***
Resource    ${EXECDIR}/import_exam.robot

Test Setup    Open web    https://todoist.com/auth/login    chrome
Test Teardown       Close Browser

*** Test Cases ***
[TC_01] addProject
    [Documentation]    Add project success
    [Tags]    addpro_success
    Login web todolist success    dieungan27101998@gmail.com    Ngan123@    15s
    Add project    Automation_MSB_Project    7    10s
    Verify create project successs    Automation_MSB_Project


