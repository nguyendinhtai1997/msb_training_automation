*** Settings ***
Library    SeleniumLibrary
Resource    ../2_elements/timkiemweb_msb.robot

*** Keywords ***
Click vào ô tìm kiềm và nhập từ khóa "MSB"
    [Arguments]    ${text_timkiem}    ${timeout}
    Wait Until Element Is Visible    ${txt_timkiem}    ${timeout}
    Input Text    ${txt_timkiem}    ${text_timkiem}

Nhấn phím Enter để tìm kiếm
    Press Keys    ${txt_timkiem}    ENTER

Click vào kết quả tìm kiếm đầu tiên
    [Arguments]    ${timeout}
    Wait Until Element Is Visible    ${kq_timkiemso1}    ${timeout}
    Click Element    ${kq_timkiemso1}

Tắt Popup
    [Arguments]    ${timeout}
    Wait Until Element Is Visible    ${tat_pu}    ${timeout}
    Click Element    ${tat_pu}

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    ${verify_trang}    
