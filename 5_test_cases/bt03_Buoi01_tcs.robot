*** Settings ***

Resource    ../import.robot

Test Setup    Mở web bằng trình duyệt    https://www.google.com/    chrome
Test Teardown    Close Browser

*** Test Cases ***
[AUT_01] - Bài tập về nhà 03 Buoi 01
    [Documentation]    Bài tập về nhà 03 Buoi 01
    [Tags]    BTVN_03_Buoi01
    Tìm kiếm và chọn kết quả đầu tiên   
    Verify có chứa text    Chọn thẻ phù hợp với bạn
