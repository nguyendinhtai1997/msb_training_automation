*** Settings ***
Resource    ../6_Report/import.robot
Resource    ../3_Keywords/Bài 1.Tiki_Keywords.robot

Test Setup    Open Webpage    https://tiki.vn/
Test Teardown    Close Browser

*** Variables ***
${timeout}    20s

** Test Cases **
    [TCs_01] - Demo Tiki
    [Documentation]    Demo Tiki 
    [Tags]    demo_tiki.vn
    ${inp_search}    Set Variable    nồi chiên
    Input key    ${inp_text}    ${inp_search}    ${timeout}
    Select key suggest    ${div_suggest}    ${timeout}
    Choice product    ${div_product4}    ${timeout}
    Buy product    ${btn_buy_product}    ${timeout}
    Verify result    ${text_hello}    ${timeout}