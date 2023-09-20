*** Settings ***
Resource            ../../import_btvn2.robot

Test Setup          Open web    https://demo.guru99.com/telecom/index.html    chrome
Test Teardown       Close Browser


*** Test Cases ***
[TC_01] addCustomer
    [Documentation]    Add customer success
    [Tags]    addcus_success
    Click button Add customer    15s
    Fill form Add customer    Ngan    Nguyen Thi    dieungan27101998@gmail.com    Ha Noi    0358311112    15s
    Save Customer ID and back to Home page
    Open Add Tariff Plan to Customer function    15s
    Enter the newly created Customer ID and click Submit
    Check text display: Approved Tariff Plans
