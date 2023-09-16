*** Settings ***
Resource    ../5.Report/import.robot
Resource    ../3.Keywords/Bai 1.Todoist_keyword.robot

Test Setup    Open Webpage    https://todoist.com/auth/login
Test Teardown    Close Browser
*** Variables ***
${timeout}    30s

** Test Cases **
#Bai 1
[TCs_01] - Tao project Todoist
    [Documentation]    Todoist.com
    [Tags]    Todoist.com
    ${email}=    Set Variable    Hangvicc1404@gmail.com
    ${password}=    Set Variable    Hang@nh442664
    Input text to locator    ${inp_email}    ${email}    ${timeout}
    Input text to locator    ${inp_pwd}    ${password}    ${timeout}
    Login    ${btn_Login}
    Hover Item    ${item_project}    ${timeout}
    Click Item    ${item_Addproject}    ${timeout}
    Input text to locator    ${inp_projectname}    ${inp_Name_Project}    ${timeout}
    Click Item    ${btn_Add}    ${timeout}
    Verify result    ${verify_project}    ${timeout}

[TCs_02] - Tao task Todoist
    [Documentation]    Task Todoist.com
    [Tags]    Task Todoist.com
    ${email}=    Set Variable    Hangvicc1404@gmail.com
    ${password}=    Set Variable    Hang@nh442664
    Input text to locator    ${inp_email}    ${email}    ${timeout}
    Input text to locator    ${inp_pwd}    ${password}    ${timeout}
    Login    ${btn_Login}
    Hover Item    ${item_project}    ${timeout}
    Click Item    ${item_Addproject}    ${timeout}
    Input text to locator    ${inp_projectname}    ${inp_Name_Project}    ${timeout}
    Click Item    ${btn_Add}    ${timeout} 
    Click Item    ${btn_task}    ${timeout}
    Click Item    ${inp_task}    ${timeout}
    Execute JavaScript    ${script_input_text}
    Click Item    ${button_Add_task}    ${timeout}
    Click Item    ${item_task}    ${timeout}
    Verify result    ${verify_task}    ${timeout}
