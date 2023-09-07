*** Settings ***
Resource  ../Variables/common_variables.robot
Resource    ../Variables/Guru99_telecome.robot
Resource    ../Variables/guru99_telecom_data.robot
Resource    ../Keyword/Common_keyword.robot
Library   SeleniumLibrary

*** Keywords ***
Truy cập vào trang Guru 99
    Truy cập vào Browser    ${url_guru_telecom}
    Maximize Browser Window

Click Add Customer
     Wait Until Element Is Visible    ${a_Addcustomer}    10s
     Click Element    ${a_Addcustomer}
     Reload Page
     Wait Until Element Is Visible    ${a_Addcustomer}    10s
     Click Element    ${a_Addcustomer}
 Click Done
     Wait Until Element Is Visible    ${done}    30s
     Click Element    ${done}
Nhập FirstName
     Input Text    ${inp_Firstname}    ${Fname}
Nhập LastName
     Input Text    ${inp_Lastname}    ${Lname}
 Nhập Email
     Input Text    ${inp_email}    ${Email}
 Nhập Address
     Input Text    ${inp_address}    ${Address}
 Nhập Mobile Number
     Input Text    ${inp_phone}    ${phone}
Click Button Submit
     Click Button    ${btn_submit}
Lưu Customer ID
    Wait Until Element Is Visible    ${save_cusID}    5s
    ${element_text} =    Get Text    ${save_cusID}
    Set Shared Variable       ${element_text}  
    Click Element    ${btn_home}
Click Add Tariff Plan to Customer
    Reload Page
    Wait Until Element Is Visible    ${a_ATBcustomer}
    Click Element    ${a_ATBcustomer}
Nhập customerID và submit
    Wait Until Element Is Visible    ${inp_customerID}    10s
    ${valid_ID}    Get Shared Variable
    Input Text    ${inp_customerID}    ${valid_ID}
    Click Element    ${btn_submit2}
    Wait Until Element Is Visible    ${verify_text1}    10s