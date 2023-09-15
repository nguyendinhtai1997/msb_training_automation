*** Settings ***
Resource    ../import_exam.robot

*** Test Cases ***
[TC_01]- Tạo project & tạo task Automation_MSB_Project
    [Documentation]    Tạo project& task Automation_MSB_Project
    [Tags]    todoist_project_task
    Mở trang web bằng trình duyệt     https://todoist.com/auth/login    chrome
    Đăng nhập Todoist với     thaolyno1@gmail.com    Chuot1504@
    Click menu project
    Tạo một project có tên     Automation_MSB_Project
    Verify Project đã tạo với tên    Automation_MSB_Project
    Nhấn nút tạo task trong project
    Tạo task có tên    Automation_MSB_Task
    Verify task đã tạo với tên    Automation_MSB_Task
