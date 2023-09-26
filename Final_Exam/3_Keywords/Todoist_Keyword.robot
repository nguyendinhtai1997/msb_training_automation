*** Settings ***
Resource    ../import_exam.robot


*** Keywords ***
Login Todoist
    [Arguments]
    ...    ${locator_email}
    ...    ${value_email}
    ...    ${locator_password}
    ...    ${value_password}
    ...    ${button_login}
    ...    ${timeout}
    Input text to locator    ${locator_email}    ${value_email}    ${timeout}
    Input text to locator    ${locator_password}    ${value_password}    ${timeout}
    Click Item    ${button_login}    ${timeout}

Hidden blur loading
    [Arguments]    ${locator}    ${timeout}
    Wait Until Page Contains Element    ${locator}    ${timeout}
    Execute JavaScript    ${script_close_blur_loading}

Select item and hidden blur loading
    [Arguments]    ${locator}    ${timeout}
    Hidden blur loading    ${locator}    ${timeout}
    Click Item    ${locator}    ${timeout}

Add project
    [Arguments]
    ...    ${locator_btn_Add_project}
    ...    ${locator_name_project}
    ...    ${value_name_project}
    ...    ${locator_btn_Add}
    ...    ${timeout}
    Click Item    ${locator_btn_Add_project}    ${timeout}
    Input text to locator    ${locator_name_project}    ${value_name_project}    ${timeout}
    Click Item    ${locator_btn_Add}    ${timeout}

Add task name
    [Arguments]
    ...    ${locator_input}
    ...    ${script_name_task}
    ...    ${locator_btn_Add}
    ...    ${timeout}
    Wait Until Page Contains Element    ${locator_input}    ${timeout}
    Execute JavaScript    ${script_name_task}
    # Hidden blur loading    ${locator_btn_Add}    ${timeout}
    Click Item    ${locator_btn_Add}    ${timeout}
