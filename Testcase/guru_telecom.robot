*** Settings ***
Resource    ..//Keyword/Guru99_telecom_keyword.robot
Library   SeleniumLibrary

*** Test Cases ***
[AU_01] - Đăng nhập vào Guru 99
    [Documentation]    Đăng nhập vào Guru 99
    [Tags]    TC_02
    Truy cập vào trang Guru 99
    Click Add Customer
    Click Done
    Nhập FirstName
    Nhập LastName
    Nhập Email
    Nhập Address
    Nhập Mobile Number
    Click Button Submit
    Lưu Customer ID
    Click Add Tariff Plan to Customer
    Nhập customerID và submit


# #*** Keywords ***
# #Truy cập vào trang Guru 99
#     Open Browser    https://demo.guru99.com/telecom/index.html    chrome
#     Maximize Browser Window
# Load lại page
#     Reload Page    
# Click Add Customer
#      Click Element    //h3/a[text()="Add Customer"]
# Click Done
#      Wait Until Element Is Visible    //label[contains(text(),'Done')]    20s   
#      Click Element    //label[contains(text(),'Done')]
#  Nhập FirstName
#      Input Text    //input[@id="fname"]    Ngo
# Nhập LastName
#      Input Text    //input[@id="lname"]    Hien
#  Nhập Email
#      Input Text    //input[@id="email"]    hiennt60@msb.com.vn
#  Nhập Address
#      Input Text    //textarea[@id="message"]    demo123
#  Nhập Mobile Number
#      Input Text    //input[@id="telephoneno"]    123456
# Click Button Submit
#      Click Button    //input[@name='submit']
# Lưu Customer ID
#      Get Text    //table[@class='alt access']//h3
#  Click Button Home
#      Click Button     //a[@class='button']
#  Click Add Tariff Plan to Customer
#      Click Element    //a[@href="assigntariffplantocustomer.php"]
# Nhập Customer ID
#     Input Text    //input[@id='customer_id']    734093
# Click Button Submit 2
#     Click Button    //input[@name='submit']
# Verify "Approved Tariff Plans"
#     Wait Until Element Contains    //h2[text()="Approved Tariff Plans"]    10s





        