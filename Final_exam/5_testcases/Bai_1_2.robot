*** Settings ***
Resource    ../import_exam.robot


*** Test Cases ***
Bai_1
    [Documentation]    Bai tap 1
    [Tags]    bai_1
    Visit page    https://todoist.com/auth/login    chrome
    Input email    //input[@id='element-0']    khuathangnga@gmail.com
    Input password    //input[@id='element-3']    Chubby245*
    Click button Login    //button[@class='nFxHGeI S7Jh9YX _8313bd46 _7a4dbd5f _95951888 _2a3b75a1 _8c75067a']
    Click button Add task    //button[@id='quick_add_task_holder']
    Input task name    //div[@class='tiptap ProseMirror']/p[@data-placeholder='Task name']    Automation_MSB_Project
    Click Add task    //button[@class='_8313bd46 _7a4dbd5f _5e45d59f _2a3b75a1 _56a651f6']
    Wail Until Element Is Visible    //div[@id='task-7233110192-content']

Bai_2
    [Documentation]    Bai tap 2
    [Tags]    bai_2
    Visit page    https://todoist.com/auth/login    chrome
    Input email    //input[@id='element-0']    khuathangnga@gmail.com
    Input password    //input[@id='element-3']    Chubby245*
    Click button Login    //button[@class='nFxHGeI S7Jh9YX _8313bd46 _7a4dbd5f _95951888 _2a3b75a1 _8c75067a']
    Click project    //button[@class='task_checkbox priority_1']
    Create task    //div[@id='task-7233110192-content']/div[1]/div[1]/div[1]/button[@class='more_actions_button']
    Click Go to project    //div[@contains(text(),'Go to project')
    Click project    //li[@data-item-id='7233110192']
    Click Add Subtask
    ...    //div[@class='rhBN4zt _2a3b75a1 _509a57b4 e5a9206f']/button[@class='_3RuHnaq IHkax9F _8313bd46 f169a390 _5e45d59f _2a3b75a1 _56a651f6']
    Input taskname    //div[@aria-label='Task name']/p[1]    Automation_MSB_Task
    Click button Add task    //button[@class='_8313bd46 _7a4dbd5f _5e45d59f _8644eccb _2a3b75a1']
