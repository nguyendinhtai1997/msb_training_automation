*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${key_customerID}   customerID

*** Keywords ***
Open Webpage
    [Arguments]    ${url}
    Open Browser    ${url}    Firefox

Set Share Variable
    [Arguments]    ${value}
    Set Global Variable    ${key_customerID}    ${value}

Get Share Variable
    [Return]    ${key_customerID}

Verify result
    [Arguments]    ${text}    ${timeout}
    Wait Until Element Is Visible    ${text}    ${timeout}
    Page Should Contain Element    ${text}

#     ${B1_Tiki_Page}    https://tiki.vn/
# ${B2_Guru99_Page}    https://demo.guru99.com/test/login.html
# ${B3_Google_Page}    https://www.google.com/
# ${B4_Guru99_Telecom_Page}    https://demo.guru99.com/telecom/index.html
# ${browser}    Firefox
