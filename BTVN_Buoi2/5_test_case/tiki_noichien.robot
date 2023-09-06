*** Settings ***
Resource    ../import_tiki.robot

#Test Setup    Mở trang web bằng trình duyệt    https://tiki.vn/    chrome
#Test Teardown    Close Browser

*** Test Cases ***
[TC_01] - Mua nồi chiên Tiki      
    [Documentation]    Mua nồi chiên Tiki
    [Tags]    tiki_noichien
    Mở trang web bằng trình duyệt    https://tiki.vn/    chrome
    Tìm kiếm và mua sản phẩm nồi chiên	nồi chiên
    Xác nhận popup chứa text    Xin chào
