*** Settings ***
Resource    ../import_exam.robot


Test Setup    Mở trang Todoist    https://todoist.com/auth/signup    chrome
Test Teardown    Close Browser

*** Test Cases ***
[AUT_01] - Bài thi số 01
    [Documentation]    Bài thi số 02
    [Tags]    Baithi_02
    Login thành công   testemail0708@gmail.com    Quymanh2410
    Tạo Task trong Project    Automation_MSB_Task
    Verify Task với text    Automation_MSB_Task