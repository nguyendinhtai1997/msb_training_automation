*** Settings ***
Resource    ../2_elements/tiki_noichien_element.robot
Library     SeleniumLibrary


*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tìm kiếm và mua sản phẩm nồi chiên
    [Arguments]    ${product}
    Wait Until Element Is Visible    ${inp_product}
    Input Text    ${inp_product}    ${product}
    Wait Until Element Is Visible    ${slt_suggest}    7s
    Click Element    ${slt_suggest}
    Wait Until Element Is Visible    ${slt_product}    7s
    Click Element    ${slt_product}
    Wait Until Element Is Visible    ${btn_buy}    7s
    Click Element    ${btn_buy}

Xác nhận popup chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[contains(text(), "${text}")]    7s
    Close Browser
