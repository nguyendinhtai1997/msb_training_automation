*** Settings ***
Resource    ..//imports.robot

*** Keywords ***

Truy cập google.com
    [Arguments]    ${url}    ${brower}
    Open Browser    ${url}    ${brower}
    Maximize Browser Window
    
Tìm kiếm từ khóa "MSB"
    [Arguments]    ${search}    ${search_msb}
    Input Text    ${search}    ${search_msb}

Click ENTER để thực hiện tìm kiếm MSB 
    
    Press Keys    ${None}    ENTER

Click vào kết quả tìm kiếm đầu tiên 
    [Arguments]    ${click_link}
    Wait Until Element Is Visible    ${click_link}    10s
    Click Element    ${click_link}

Click tắt Popup
    [Arguments]    ${icon_x}
    Wait Until Element Is Visible    ${icon_x}    10s
    Click Element    ${icon_x}


Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[text() = "${text}"]    5s
