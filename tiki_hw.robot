*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[homework2] - Tiki Homework
    [Documentation]    tiki homework
    [Tags]    homework_tiki 
    Truy cập vào trang tiki.vn    https://tiki.vn    Chrome
    Nhập vào ô tìm kiếm "nồi chiên"    //input[@data-view-id="main_search_form_input"]    nồi chiên
    sleep    3s
    Click vào keyword "Nồi chiên không dầu"    0
    sleep    3s
    Nhấn vào sản phẩm thứ    4
    Sleep    3s
    Click vào nút Chọn mua    //button[@class="styles__PrimaryButtonStyled-sc-72jxmg-0 Ketmo"]
    Sleep    3s
    Verify popup có chứa xin chào    Xin chào,
    Sleep    10s



*** Keywords ***
Truy cập vào trang tiki.vn
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm "nồi chiên"
    [Arguments]    ${locator}    ${Text}
    Input Text    ${locator}    ${Text}

Click vào keyword "Nồi chiên không dầu"
    [Arguments]    ${keyword}
    #Click Element At Coordinates    //a[@data-view-id="search_suggestion_history_item"]//div[contains(text(),"${keyword}")]
    Click Element    //a[@data-view-index="${keyword}"]

Nhấn vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Visible    //div[@data-view-id="product_list_container"]/div[${index}]    10s
    Click Element    //div[@data-view-id="product_list_container"]/div[${index}]

Click vào nút Chọn mua
    [Arguments]    ${button_chọnmua}
    #Click Button    //div[@class="group-button"]//span[text()="${button_chọnmua}"]
    Click Button    ${button_chọnmua}

Verify popup có chứa xin chào
    [Arguments]    ${Text}
    Wait Until Element Is Visible    //div[@class="styles__Left-sc-2hr4xa-1 iwneWf"]//h4[contains(text(),"${Text}")]    3s
    #Page Should Contain Element        //h1[contains(text(),Xe)]        