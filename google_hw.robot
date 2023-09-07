*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[homework3] - Google Homework
    [Documentation]    google homework
    [Tags]    homework_google 
    Truy cập vào trang google    https://www.google.com/    Chrome
    sleep    3s
    Nhập vào ô tìm kiếm "MSB"    //textarea[@id="APjFqb"]    MSB
    sleep    3s
    Tìm kiếm
    Click vào kết quả tìm kiếm đầu tiên    
    Tắt popup    //div[@id="fragment-34902-chcv"]//div//div//div//span[@class = "pop-up-porlet-close-btn"]
    Verify popup có chứa thẻ phù hợp    thẻ phù hợp với bạn
    Sleep    5s

*** Keywords ***
Truy cập vào trang google
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

Nhập vào ô tìm kiếm "MSB"
    [Arguments]    ${locator}    ${Text}
    Input Text    ${locator}    ${Text}

Tìm kiếm
    Press Keys  //textarea[@id="APjFqb"]    ENTER  

Click vào kết quả tìm kiếm đầu tiên
    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    
Tắt popup
    [Arguments]    ${popup_locator}
    Wait Until Element Is Visible    {popup_locator}    5s
    Click Element    {popup_locator} 
    
Verify popup có chứa thẻ phù hợp
  [Arguments]    ${Text}
    Wait Until Element Is Visible    //body[contains(text(),"${Text}")]    3s      