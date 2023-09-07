*** Settings ***
Resource    ../Variables/google.robot
Resource    ../Keyword/Google_keyword.robot
Resource    ../Variables/goole_data.robot
Resource    ../Keyword/Common_keyword.robot
Library    SeleniumLibrary

*** Keywords ***
Truy cập trang google.com
    Truy cập vào Browser    ${url_google}    
    Maximize Browser Window


Nhập vào ô tìm kiếm "MSB"
    Input Text    ${inp_tìm kiếm}    ${name_suggest}

Click vào gợi ý đầu tiên
    Wait Until Element Is Visible    ${div_suggest}    ${time_out}
    Click Element    ${div_suggest}

Click vào kết quả đầu tiên
    Wait Until Element Is Visible    ${div_product_1st}    ${time_out}
    Click Element    ${div_product_1st}
Tắt popup
    Wait Until Element Is Visible    ${div_Tắt popup}    ${time_out}
    Click Element    ${div_Tắt popup}
Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    ${verify_Chọn thẻ phù hợp với bạn}    ${time_out}