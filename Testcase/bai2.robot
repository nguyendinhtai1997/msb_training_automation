*** Settings ***
Resource    ../Keyword/Tiki_keyword.robot
Library       SeleniumLibrary

*** Test Cases ***
[AU_01] - Tìm kiếm và mua sản phẩm thứ 4 nồi chiên
    [Documentation]    Tìm kiếm và mua sản phẩm thứ 4 nồi chiên
    [Tags]    TC_01
    #Truy cập trang Tiki.vn    https://tiki.vn/    chrome
    
    #Nhập vào ô tìm kiếm "nồi chiên"    //input[@data-view-id="main_search_form_input"]    nồi chiên
    
    #Click vào nồi chiên không dầu    //div[text()="nồi chiên không dầu"]
    
    #Click vào sản phẩm thứ 4    //div[@data-view-id="product_list_container"]/div[4]
    
    #Click button Mua ngay    //button[span]
    
    #Verify popup có chứa Xin chào    //h4[contains(text(),"Xin chào")]
    Truy cập trang Tiki.vn
    Nhập vào ô tìm kiếm "nồi chiên"    ${name_suggest}    
    Click vào nồi chiên không dầu
    Click vào sản phẩm thứ 4
    Click button Chọn mua
    Verify popup có chứa Xin chào

