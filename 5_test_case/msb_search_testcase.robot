*** Settings ***
Resource    ../import.robot


*** Test Cases ***
[MSB_TC_01] - Select product item from search result
    [Documentation]    Search MSB
    [Tags]    search_msb
    Access to gooogle page
    Search key word    MSB
    Click on first result
    Close popup
    Verify text is displayed
