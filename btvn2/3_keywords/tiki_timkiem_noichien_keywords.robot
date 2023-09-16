*** Settings ***
Resource    ${EXECDIR}/import_btvn2.robot

*** Keywords ***
Open web tiki
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tai thanh search nhap tu khoa "nồi chiên"
    [Arguments]    ${timkiem}
    Input Text    ${inP_search}    ${timkiem}

Click vào "nồi chiên không dầu" xuất hiện trong cụm gợi ý tìm kiếm sau khi thực hiện bước 2
    [Arguments]    ${timeout}
    Wait Until Element Is Visible    ${ele_noichienkhongdau}    ${timeout}
    Click Element    ${ele_noichienkhongdau}

Click vào sản phẩm nồi chiên thứ 4
    [Arguments]    ${timeout}
    Wait Until Element Is Visible    ${ele_noichienthu4}    ${timeout}
    Click Element    ${ele_noichienthu4}

Click "Chọn mua"
    [Arguments]    ${timeout}
    Wait Until Element Is Visible    ${btn_chonmua}     ${timeout}
    Click Button    ${btn_chonmua} 

Verify popup có chứa "Xin chào"
    Wait Until Element Is Visible    ${Pu}
