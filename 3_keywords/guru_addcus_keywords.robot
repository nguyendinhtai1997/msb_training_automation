*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open web guru
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click button Add customer
    Wait Until Element Is Visible    ${link_addCustomer}    15s
    Click Link    ${link_addCustomer}
    Reload Page
    Click Link    ${link_addCustomer}

Fill form Add customer
    [Arguments]    ${fname}    ${lname}    ${email}    ${message}    ${telephoneno}
    Wait Until Element Is Visible    ${label_done}    10s
    Click Element    ${label_done}
    Wait Until Element Is Visible    ${inP_fname}    10s
    Input Text    ${inP_fname}    ${fname}
    Input Text    ${inP_lname}    ${lname}
    Input Text    ${inP_email}    ${email}
    Input Text    ${inP_message}    ${message}
    Input Text    ${inP_telephoneno}    ${telephoneno}
    Scroll Element Into View    ${btn_submit}
    Click Button    ${btn_submit}

Save Customer ID and back to Home page
    Wait Until Element Is Visible    ${txt_accessDetails}
    ${customerID}    Get Text    ${text_CustomerID}
    Set Test Variable    ${customerID_value}    ${customerID}
    Click Link    ${link_home}

Open Add Tariff Plan to Customer function
    Wait Until Element Is Visible    ${link_addTariffPlan}    10s
    Click Link    ${link_addTariffPlan}

Enter the newly created Customer ID and click Submit
    Input Text    ${inP_customerID}    ${customerID_value}
    Click Button    ${btn_submit}

Check text display: Approved Tariff Plans
    Wait Until Element Is Visible    ${txt_approvedTariff}
