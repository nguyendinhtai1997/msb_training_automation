*** Settings ***
Resource    ../import_guru_telecom.robot

#Test Setup    Mở trang web bằng trình duyệt    https://demo.guru99.com/test/login.html    chrome
#Test Teardown    Close Browser

*** Test Cases ***
[TC_01] - Thêm mới khách hàng
    [Documentation]    Thêm mới khách hàng
    [Tags]    guru_telecom
    Mở trang web bằng trình duyệt    https://demo.guru99.com/telecom/index.html		chrome
	Đăng kí khách hàng lưu lại CustomerID    Nguyen	Viet Phuong	vietphuonghaha@gmail.com	Hanoi	0978471254
    Kiểm tra màn hình hiển thị chữ    Approved Tariff Plans