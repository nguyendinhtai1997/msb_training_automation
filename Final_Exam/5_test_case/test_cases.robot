*** Settings ***
Resource    ../import_exam.robot


*** Test Cases ***
Bai_1
    [Documentation]    Tạo project Automation_MSB_Project
    [Tags]    them_moi_project
    Mở trang web bằng trình duyệt add project    https://todoist.com/auth/login    chrome
    Nhập thông tin log in    vietphuong25495@gmail.com    Muong14.vn
    Tạo project Automation_MSB_Project    Automation_MSB_Project
    Xác nhận popup chứa text    Automation_MSB_Project

Bai_2
    [Documentation]    Tạo task trong project
    [Tags]    tao_moi_task
    Mở trang web bằng trình duyệt add task    https://todoist.com/auth/login    chrome
    Nhập thông tin log in    vietphuong25495@gmail.com    Muong14.vn
    Tạo task trong project    Automation_MSB_Task
    Xác nhận popup chứa text    Automation_MSB_Task
