*** Settings ***
Resource    ../import.robot

Test Setup    Mở trang web bằng trình duyệt    https://tiki.vn/    chrome
Test Teardown    Close Browser

*** Test Cases ***
[AUT_01] - Bài tập về nhà 02 Buoi 01
    [Documentation]    Bài tập về nhà 02 Buoi 01
    [Tags]    BTVN_02_Buoi01
    Tìm kiếm sản phẩm và chọn mua    
    Verify popup có chứa text    Xin chào

