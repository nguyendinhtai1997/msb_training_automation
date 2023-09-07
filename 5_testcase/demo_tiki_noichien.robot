*** Settings ***
Resource    ../import.robot

Test Setup    Open web    https://tiki.vn/    chrome
Test Teardown    Close Browser

*** Test Cases ***
TC_timkiem
    [Documentation]    Tim kiem noi chien khong dau
    [Tags]    timkiemnoichien
    Tai thanh search nhap tu khoa "nồi chiên"    nồi chiên

    Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2

    Click vào sản phẩm nồi chiên thứ 4

    Click "Chọn mua"

    Verify popup có chứa "Xin chào"

