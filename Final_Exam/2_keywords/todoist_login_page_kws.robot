*** Settings ***
Resource    ../1_elements/todoist_login_page.robot
Library     SeleniumLibrary


*** Keywords ***
Access to Todoist login page
    Open Browser    https://todoist.com/auth/login    chrome
    Maximize Browser Window

Input email and password
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    ${tf_email}
    Input Text    ${tf_email}    ${email}
    Input Text    ${tf_password}    ${password}

Click Login button
    Click Element    ${btn_login}
