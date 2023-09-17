*** Settings ***
Resource    ../import_google_msb.robot
# Test Setup    Mở trang web bằng trình duyệt    https://demo.guru99.com/test/login.html    chrome
# Test Teardown    Close Browser


*** Test Cases ***
[TC_01] - Tìm kiếm MSB trên google
    [Documentation]    Tìm kiếm MSB trên google
    [Tags]    google_msb
    Mở trang web bằng trình duyệt    https://www.google.com/    chrome
    Tìm kiếm MSB và chọn kết quả đầu tiên    MSB
    Xác nhận popup chứa text    Chọn thẻ phù hợp với bạn
