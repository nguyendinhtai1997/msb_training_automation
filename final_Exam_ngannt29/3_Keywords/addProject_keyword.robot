*** Settings ***
Resource    ${EXECDIR}/import_exam.robot

*** Keywords ***
Add project
    [Arguments]    ${nameProject}    ${index}    ${timeout}
    Click Button    ${btn_addProject}
    Input Text    ${txt_nameProject}    ${nameProject}
    Click Button    ${drd_colorProject}
    ${li_element}    Set Variable    (${choose_colorProject})[${index}]
    Wait Until Element Is Visible    ${li_element}    10s
    Click Element    ${li_element}
    Wait Until Element Is Visible    ${btn_addFavorite}    ${timeout}
    Click Element    ${btn_addFavorite}
    Click Button    ${btn_viewProject}
    Wait Until Element Is Visible    ${btn_addProjectSubmit}    ${timeout}
    # Wait Until Element Is Enabled    ${btn_addProject}    ${timeout}
    Click Element    ${btn_addProjectSubmit}
    ${pro}    Get Text    ${project}
    Set Test Variable    ${newestPro}    ${pro}

Verify create project successs
    [Arguments]    ${nameProject}
    Should Be Equal As Strings    ${newestPro}    ${nameProject}
