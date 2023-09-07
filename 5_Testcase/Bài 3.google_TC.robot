*** Settings ***
Resource    ../6_Report/import.robot
Resource    ../3_Keywords/Bài 3.google_keywords.robot

Test Setup    Open Webpage    https://www.google.com/
Test Teardown    Close Browser

*** Variables ***
${timeout}    20s

** Test Cases **
[TCs_01] - Search info MSB
    [Documentation]    Search info MSB
    [Tags]    demo_google.com
    ${search}=    Set Variable    MSB
    Input search keyword    ${inp_text_search}    ${search}    ${timeout}
    Search keyword    ${inp_text_search}
    Choice first result    ${first_result}    ${timeout}
    Close popup    ${btn_popup_msb}    ${script_close_popup_msb}    ${timeout}
    Verify result    ${text_choice}    ${timeout}