*** Settings ***
Resource    ../imports.robot


*** Test Cases ***
[AUT_03] - Bài tập về nhà 03
    [Documentation]    Bài tập về nhà 03
    [Tags]    btvn_03
    Truy cập trang google    https://www.google.com/    chrome
    Tìm kiếm từ khóa    //textarea[@id = "APjFqb"]    MSB
    Button Tìm Kiếm
    Click vào kết quả tìm kiếm số    1
    Tắt Popup
    Verify trang có chứa    Chọn thẻ phù hợp với bạn
