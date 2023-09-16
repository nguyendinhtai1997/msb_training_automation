*** Settings ***
Resource    ../import_exam.robot


*** Test Cases ***
BT 1
    [Documentation]    Bai tap 1
    [Tags]    bai_1
    Visit page    https://todoist.com/auth/login    chrome
    Input email    //input[@id='element-0']    khuathangnga@gmail.com
    Input password    //input[@id='element-3']    Chubby245*
    Click button Login    //button[@class='nFxHGeI S7Jh9YX _8313bd46 _7a4dbd5f _95951888 _2a3b75a1 _8c75067a']
    Click button Add task    //button[@id='quick_add_task_holder']
    Input task name    //div[@class='tiptap ProseMirror']/p[@data-placeholder='Task name']   Automation_MSB_Project
    Click Add task    //button[@class='_8313bd46 _7a4dbd5f _5e45d59f _2a3b75a1 _56a651f6']
    Wail Until Element Is Visible    //div[@id='task-7233110192-content']

