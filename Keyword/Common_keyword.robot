*** Settings ***
Resource    ../Variables/common_variables.robot
Library    SeleniumLibrary

*** Keywords ***
Truy cập vào Browser
    [Arguments]    ${url}    ${broswer}=${chrome}
    Open Browser    ${url}    ${broswer}
    Maximize Browser Window