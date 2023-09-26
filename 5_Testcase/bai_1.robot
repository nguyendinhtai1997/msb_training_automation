*** Settings ***
Resource            ../import.robot

Test Setup          Open Webpage    https://tiki.vn/
Test Teardown       Close Browser


*** Test Cases ***
[TCs_01] - Demo Tiki
    [Documentation]    Demo Tiki
    [Tags]    demo_tiki.vn
    ${inp_search}    Set Variable    nồi chiên
    Input key    ${inp_text}    ${inp_search}    ${timeout}
    Select key suggest    ${div_suggest}    ${timeout}
    Choice product    ${div_product4}    ${timeout}
    Buy product    ${btn_buy_product}    ${timeout}
    Verify result    ${text_hello}    ${timeout}
