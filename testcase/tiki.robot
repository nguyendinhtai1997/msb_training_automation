*** Settings ***
Resource    ../imports.robot

*** Test Cases ***
Bai tap 01 - Viet lai bai tap 02 - Buoi 1
    [Documentation]    Viet lai bai tap 02 - Buoi 1
    [Tags]    BTVN_01_02
    Truy cập trang Tiki.vn    https://tiki.vn/   chrome
	
    Tìm kiếm cụm từ "nồi chiên"    //input[@data-view-id='main_search_form_input']    nồi chiên
	
    Click vào "nồi chiên không dầu"    //*[text() = 'nồi chiên không dầu']
	
    Click vào sản phẩm thứ     4
	
    Click "Chọn mua"    //button[@data-view-id='pdp_add_to_cart_button']
	
    Verify popup có chứa "Xin chào"    Xin chào,