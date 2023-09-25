*** Settings ***
Resource            ../8_imports/imports_exam.robot

Test Setup          Mở trang Todoist  https://todoist.com/auth/signup    chrome
Test Teardown       Close Browser


*** Test Cases ***
Bai_1
    [Documentation]    Bài thi số 01
    [Tags]    baithi_01
    Login thành công    testemail0708@gmail.com    Quymanh2410
    Tạo Project trong Web Todoist    Automation_MSB_Project
    Verify Project với text    Automation_MSB_Project

Bai_2
    [Documentation]    Bài thi số 02
    [Tags]    baithi_02
    Login thành công    testemail0708@gmail.com    Quymanh2410
    Tạo Task trong Project    Automation_MSB_Task
    Verify Task với text    Automation_MSB_Task
