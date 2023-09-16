*** Settings ***
Resource    ../import_exam.robot


Test Setup    Mở trang Todoist bằng trình duyệt    https://todoist.com/auth/signup    chrome
Test Teardown    Close Browser

*** Test Cases ***
[AUT_01] - Bài thi số 01
    [Documentation]    Bài thi số 01
    [Tags]    Baithi_01
    Login thành công bằng email/pass    testemail0708@gmail.com    Quymanh2410
    Tạo Project trong Web Todoist    Automation_MSB_Project
    Verify Project với text    Automation_MSB_Project