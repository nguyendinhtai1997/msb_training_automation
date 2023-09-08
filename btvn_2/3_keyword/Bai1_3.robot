*** Settings ***
Resource    ../imports.robot


*** Keywords ***
Truy cập trang google
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tìm kiếm từ khóa
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}
    Click Button    //div[@class='OBMEnb']/ul[1]/li[1]

Button Tìm Kiếm
    Click Button    //div[@id="fragment-34202-joci"]/div/div/div/span
