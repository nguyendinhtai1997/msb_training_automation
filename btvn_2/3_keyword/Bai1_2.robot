*** Settings ***
Resource    ../imports.robot


*** Keywords ***
Truy cập trang tiki
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Tìm kiếm cụm từ
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click vào "nồi chiên không dầu" trong gợi ý tìm kiếm bước 2
    [Arguments]    ${text}
    Wait Until Element Is Visible
    ...    //a[@data-view-id = "search_suggestion_keyword_item"]/div[text() = "${text}"]
    ...    10s
    Click Element    //a[@data-view-id = "search_suggestion_keyword_item"]/div[text() = "${text}"]

Click vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Enabled    //div [@data-view-id = "product_list_container"]/div[${index}]    10s
    Click Element    //div [@data-view-id = "product_list_container"]/div[${index}]

Click "Chọn mua"
    [Arguments]    ${chon_mua_btn}
    Click Button    ${chon_mua_btn}

Verify popup có chứa
    [Arguments]    ${text}
    Wait Until Element Is Enabled    //h4[contains(text(), '${text}')]
