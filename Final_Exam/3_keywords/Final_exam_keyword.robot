*** Settings ***
Library     SeleniumLibrary
Resource    ../2_elements/Final_exam_page.robot


*** Keywords ***
# Bai1

Login successfull user
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    //input[@placeholder='Enter your email...']    3s
    Input Text    ${mail}    ${email}
    Input Text    ${pass}    ${password}
    Click Element    ${btn_login}
    Wait Until Element Is Visible    ${Project_text}    10s

Click Add Project button
    Click Element    ${Project_text}
    Click Element    ${Add_Project}

Create Project successfull
    [Arguments]    ${name}
    Input Text    ${inp_name}    ${name}
    Click Button    Add
#    Click Element    ${btn_Add}
    Wait Until Element Is Visible    //span[text()='${name}']    3s

# Bai2

Click project need to create task
    [Arguments]    ${name1}
    Click Element    //ul[@id='projects_list']//div[text()='${name1}']

Click Add task button
    Wait Until Element Is Visible    ${btn_Add_task}    10s
    Click Element    ${btn_Add_task}

Input task and Submit successfull
    [Arguments]    ${Task_name}    ${Task_des}
    Input Text    ${inp_task_name}    ${Task_name}
    Input Text    ${inp_des}    ${Task_des}
    Click Button    Add task
    Wait Until Element Is Visible    //div[text()='${Task_name}']
