*** Settings ***
Resource    ../1_Common/import_exam.robot
Resource    ../3_Keywords/Todoist_Keyword.robot

Test Setup    Open Webpage    https://todoist.com/auth/login
# Test Teardown    Close Browser
*** Variables ***
${timeout}    30s

** Test Cases **
#Bai 1
[Bai_1] - Tao project Todoist
    [Documentation]    Tao project Todoist
    [Tags]    Tao project Todoist
    ${email}=    Set Variable    Hangvicc1404@gmail.com
    ${password}=    Set Variable    Hang@nh442664
    Login Todoist
    ...    ${inp_email}
    ...    ${email}
    ...    ${inp_pwd}
    ...    ${password}
    ...    ${btn_Login}
    ...    ${timeout}
    Select item and hidden blur loading    ${btn_project}    ${timeout}
    Add project
    ...    ${item_Addproject}
    ...    ${inp_projectname}
    ...    ${inp_Name_Project}
    ...    ${btn_Add}
    ...    ${timeout}
    Verify result    ${verify_project}    ${timeout}

[Bai_2] - Tao task Todoist
    [Documentation]    Tao task Todoist
    [Tags]    Tao task Todoist
    ${email}=    Set Variable    Hangvicc1404@gmail.com
    ${password}=    Set Variable    Hang@nh442664
    Login Todoist
    ...    ${inp_email}
    ...    ${email}
    ...    ${inp_pwd}
    ...    ${password}
    ...    ${btn_Login}
    ...    ${timeout}
    Select item and hidden blur loading    ${text_name_project}    ${timeout}
    Select item and hidden blur loading    ${btn_task}    ${timeout}
    Add task name
    ...    ${inp_task}
    ...    ${script_input_text}
    ...    ${button_Add_task}
    ...    ${timeout}
    Verify result    ${verify_task}    ${timeout}
