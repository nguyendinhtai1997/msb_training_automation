*** Settings ***
Resource    ../import.robot

Test Setup    Mở web Guru bằng trình duyệt    https://demo.guru99.com/telecom/index.html    chrome
Test Teardown    Close Browser

*** Test Cases ***
[AUT_01] - Bài tập về nhà Bài 03 Buổi 2
    [Documentation]    Bài tập về nhà Bài 03 Buổi 2
    [Tags]    BTVN_03_Buoi02
    Add Customer thành công    An    Nguyen    aaa@gmail.com    54A Nguyen Chi Thanh    0978656545
    Nhập Customer ID ở Add Tariff Plan
    Verify màn hình có chứa text    Approved Tariff Plans