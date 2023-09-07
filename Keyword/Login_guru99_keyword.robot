*** Settings ***
Resource    ../Variables/Login_guru99.robot
Resource    ../Keyword/Common_keyword.robot
Resource    ../Variables/Login_guru_data.robot
Library    SeleniumLibrary

*** Keywords ***
Truy cập trang Guru 99
    Truy cập vào Browser    ${url_guru99}
Nhập email address
    Input Text     ${inp_email}    ${id_email}
Nhập password
    Input Text    ${inp_password}    ${id_password}
Click button Sign in
    Click Button    ${button_Login}
Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    Wait Until Element Is Visible    ${Verify_LoginSuccessfully}    ${time_wait}