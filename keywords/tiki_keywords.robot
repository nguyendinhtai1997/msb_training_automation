*** Settings ***
Resource    ..//imports.robot
*** Keywords ***

Truy cập trang Tiki.vn
    [Arguments]    ${url}    ${brower}
    Open Browser    ${url}    ${brower}
    Maximize Browser Window
    
Tìm kiếm cụm từ "nồi chiên"
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click vào "nồi chiên không dầu"
    [Arguments]    ${click_text}
    Wait Until Element Is Visible    //*[text() = 'nồi chiên không dầu']    5s
    Click Element    ${click_text}

Click vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[${index}]    10s
    Click Element    //div[@data-view-id='product_list_container']/div[${index}]

Click "Chọn mua"
    [Arguments]    ${button_Chon_mua}
    Wait Until Element Is Visible    ${button_Chon_mua}    10s  
    Click Button    ${button_Chon_mua}

Verify popup có chứa "Xin chào"
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[text()='${text}']    5s
