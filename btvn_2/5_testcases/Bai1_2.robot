*** Settings ***
Resource    ../imports.robot


*** Test Cases ***
[AUT_02] - Bài tập về nhà 02
    [Documentation]    Bài tập về nhà 02
    [Tags]    btvn_1_2
    Truy cập trang tiki    https://tiki.vn/    chrome
    Tìm kiếm cụm từ    //input[@data-view-id="main_search_form_input"]    nồi chiên
    Click vào "nồi chiên không dầu" trong gợi ý tìm kiếm bước 2    nồi chiên không dầu
    Click vào sản phẩm thứ    4
    Wait Until Element Is Visible    10s
    Click "Chọn mua"    //button[@data-view-id = "pdp_add_to_cart_button"]
    Verify popup có chứa    Xin chào,
    Wait Until Element Is Visible    10s
