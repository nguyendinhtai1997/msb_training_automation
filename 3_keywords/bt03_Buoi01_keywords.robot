*** Settings ***
Library    SeleniumLibrary

Resource    ../2_elements/bt03_Buoi01_element.robot

*** Keywords ***
Mở web bằng trình duyệt
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tìm kiếm và chọn kết quả đầu tiên
    Input Text    ${search_google}    MSB
    Press Keys    ${search_google}    ENTER
    Wait Until Element Is Visible    ${first_result}
    Click Element    ${first_result}
    Wait Until Element Is Visible    ${close_popup}
    Click Element    ${close_popup}

    
Verify có chứa text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //div[text() = "${text}"]    10s 