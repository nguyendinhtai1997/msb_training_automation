*** Settings ***
Resource    ../imports.robot


*** Test Cases ***
Guru - Them khach hang
    [Documentation]    Them khach hang
    [Tags]    guru    tc111    
    Truy cap guru    https://demo.guru99.com/telecom/index.html    chrome
    Chon Add Customer    //h3/a[text()='Add Customer']
    Nhap thong tin khach hang    Nguyen    Thuy    thuynt@gmail.com    Ha Noi    0987655555    
    Lay Customer ID
    Click Home    //ul[@class='actions']//a[text()='Home']
    Click Add Tariff Plan to Customer    //h3/a[text()='Add Tariff Plan to Customer']
#   Input Text    //input[@id = 'customer_id']    ${cus_id}
    Nhap Customer ID vua tao    //input[@id='customer_id']   ${cus_id}
    Click Submit    //input[@name='submit']
    Kiem tra text hien thi "Approved Tariff Plans"    Approved Tariff Plans
