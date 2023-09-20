*** Settings ***
Resource    ../import.robot


*** Test Cases ***
[Guru99_TC_01] - Add customer
    [Documentation]    goru99 demo add customer
    [Tags]    guru99_demo
    Access to guru99 page
    Select Add customer
    Input customer information    Dao    Nhan    daonhan@gmail.com    Hanoi    0987654321
    Get customer ID
    Goto Add Tariff Plan to Customer
    Verify approved success
