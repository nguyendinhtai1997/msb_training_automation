*** Settings ***
Resource    ../import.robot

Test Setup    Open web    https://www.google.com/    chrome
Test Teardown    Close Browser

*** Test Cases ***
Tc_o1_Truy cập web msb
    [Documentation]    Truy cap trang web msb
    [Tags]    truycapwebmsb
    Click vào ô tìm kiềm và nhập từ khóa "MSB"    msb    15s
    Nhấn phím Enter để tìm kiếm
    Click vào kết quả tìm kiếm đầu tiên    15s
    Tắt Popup    15s
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"

