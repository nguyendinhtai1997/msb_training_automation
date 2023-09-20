*** Settings ***
Resource            ../import_exam.robot

Test Setup          Open Browser    https://todoist.com/auth/login    chrome
Test Teardown       Close Browser


*** Test Cases ***
Bai_1
    [Documentation]    Create Project
    [Tags]    bai1
    Login successfull user    nganht13@msb.com.vn    Hameunjung121297@
    Click Add Project button
    Create Project successfull    Automation_MSB_Project

Bai_2
    [Documentation]    Create Task
    [Tags]    bai2
    Login successfull user    nganht13@msb.com.vn    Hameunjung121297@
    Click project need to create task    Automation_MSB_Project
    Click Add task button
    Input task and Submit successfull    Task1    Tạo task
