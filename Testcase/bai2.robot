*** Settings ***
Resource    ../Keyword/Tiki_keyword.robot
Library       SeleniumLibrary

*** Test Cases ***
[AU_01] - Tìm kiếm và mua sản phẩm thứ 4 nồi chiên
    [Documentation]    Tìm kiếm và mua sản phẩm thứ 4 nồi chiên
    [Tags]    TC_01
    Truy cập trang Tiki.vn
    Nhập vào ô tìm kiếm "nồi chiên"    ${name_suggest}    
    Click vào nồi chiên không dầu
    Click vào sản phẩm thứ 4
    Click button Chọn mua
    Verify popup có chứa Xin chào

