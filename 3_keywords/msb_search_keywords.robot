*** Settings ***
Resource    ../2_elements/msb_search_elements.robot
Library     SeleniumLibrary


*** Keywords ***
Access to gooogle page
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window

Search key word
    [Arguments]    ${key_word}
    Input Text    ${field_gg_search}    ${key_word}
    Press Keys    ${field_gg_search}    ENTER

Click on first result
    Click Element    ${first_result}

Close popup
    Wait Until Element Is Visible    ${btn_close}    20S
    Click Element    ${btn_close}

Verify text is displayed
    Page Should Contain Element    ${lable_text}
