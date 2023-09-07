*** Settings ***
Library    SeleniumLibrary
Resource    ../2_elements/bt02_Buoi01_element.robot

*** Keywords ***
Mở trang web bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tìm kiếm sản phẩm và chọn mua
    Input Text    ${inp_search}    nồi chiên
    Wait Until Element Is Visible    ${search_keyword} 
    Click Element    ${search_keyword}
    Wait Until Element Is Visible    ${product_04}
    Click Element    ${product_04}
    Click Button    ${btn_ChonMua}

Verify popup có chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[text()= '${text}']    20s
