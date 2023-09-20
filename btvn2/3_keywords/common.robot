*** Settings ***
Resource    ../../import_btvn2.robot


*** Keywords ***
Open web
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
