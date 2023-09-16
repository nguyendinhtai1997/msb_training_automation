***Variable***
#Bai_1
${inp_email}    //input[@id="element-0"]
${inp_pwd}    //input[@id="element-3"]
${btn_Login}    //button[@data-gtm-id="start-email-login"]
${item_Addproject}    //button[@aria-label="Add project"]
${inp_projectname}    //input[@id="edit_project_modal_field_name"]
${btn_Add}    //button[@type="submit"]
${inp_Name_Project}    Automation_MSB_Project
${verify_project}    //span[text()="Automation_MSB_Project"]
${btn_project}    //div[text()="Projects"]
${script_close_blur_loading}    document.getElementById('loading').style.display = 'none';
#Bai_2
${btn_task}    //button[@class="plus_add_button"]
${inp_task}    //p[@data-placeholder="Task name"]
${script_input_text}    document.querySelector('p[data-placeholder="Task name"]').innerText = "Automation_MSB_Task"
${button_Add_task}    //button[@aria-label="Add task"]
${verify_task}    //div[text()="Automation_MSB_Task"]
${text_name_project}    //div[text()="Automation_MSB_Project"]