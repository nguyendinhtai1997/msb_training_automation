*** Settings ***
Resource    ../Variables/Tiki.robot
Resource    ../Keyword/Common_keyword.robot
Resource    ../Variables/Tiki_data.robot
Library    SeleniumLibrary

*** Keywords ***
Truy cập trang Tiki.vn
    Truy cập vào Browser    ${url_Tiki}
Nhập vào ô tìm kiếm "nồi chiên"
    [Arguments]    ${name_suggest}
    Input Text    ${inp_Tìm kiếm}    ${name_suggest}  #name_suggest = nồi chiên 

Click vào nồi chiên không dầu
    Wait Until Element Is Visible    ${div_suggest}    ${time_out}
    Click Element    ${div_suggest}

Click vào sản phẩm thứ 4
    Wait Until Element Is Visible    ${div_product_4th}    ${time_out}
    Click Element    ${div_product_4th}

Click button Chọn mua
    Wait Until Element Is Visible    ${button_Mua ngay}     ${time_out}   
    Click Button    ${button_Mua ngay}

Verify popup có chứa Xin chào
    Wait Until Element Is Visible    ${Verify_Xin chào}
