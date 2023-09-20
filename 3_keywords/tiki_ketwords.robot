*** Settings ***
Resource    ../2_elements/tiki_elements.robot
Library     SeleniumLibrary


*** Keywords ***
Access to tiki page
    Open Browser    https://tiki.vn/    chrome
    Maximize Browser Window

Search item
    [Arguments]    ${text}
    Input Text    ${field_search}    ${text}

Select item from search list
    Wait Until Element Is Visible    ${product_select}    10s
    Click Element    ${product_select}

Select item from search result
    Wait Until Element Is Visible    ${product_item_4}    20s
    Click Element    ${product_item_4}

Click buy button
    Wait Until Element Is Visible    ${btn_buy}
    Click Element    ${btn_buy}

Verify popup display text
    Wait Until Element Is Visible    ${label_welcome}    10s
