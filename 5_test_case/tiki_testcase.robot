*** Settings ***
Resource    ../import.robot


*** Test Cases ***
[TIKI_TC_01] - Select product item from search result
    [Documentation]    Search item tiki
    [Tags]    search_item_tiki
    Access to tiki page
    Search item    nồi chiên
    Select item from search list
    Select item from search result
    Click buy button
    Verify popup display text
