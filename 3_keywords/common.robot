*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open web
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window