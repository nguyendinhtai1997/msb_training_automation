*** Settings ***
Resource    ../import_exam.robot

*** Test Cases ***
[TC_01] - Tạo task trong pjoject
    [Documentation]    Tạo task trong project
    [Tags]    tao_moi_task
    Mở trang web bằng trình duyệt add task    https://todoist.com/auth/login    chrome
    Nhập thông tin log in 1   vietphuong25495@gmail.com    Muong14.vn
    Tạo task trong project    Automation_MSB_Task
    Xác nhận popup chứa text 1    Automation_MSB_Task