*** Settings ***
Resource            ../../import_btvn2.robot

Test Setup          Open web    https://demo.guru99.com/test/login.html    chrome
Test Teardown       Close Browser


*** Test Cases ***
[TC_01] - Login and verify
    [Documentation]    Login and verify
    [Tags]    bai1_btvn_guru99
    Login guru99 thành công    vietphuonghihi@gmail.com    ABbc@1234
    Kiểm tra màn hình hiển thị chữ    Successfully Logged in..    15s
