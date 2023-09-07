*** Settings ***
Resource    ../Keyword/google_keyword.robot
Library       SeleniumLibrary

*** Test Cases ***
[AU_01] - Tìm kiếm từ khóa MSB
    [Documentation]    Tìm kiếm từ khóa MSB
    [Tags]    TC_01
    Truy cập trang google.com
    
    Nhập vào ô tìm kiếm "MSB"
    
    Click vào gợi ý đầu tiên
    Click vào kết quả đầu tiên
    
    Tắt popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"