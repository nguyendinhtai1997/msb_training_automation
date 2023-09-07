*** Variables ***

${url_guru_telecom}    https://demo.guru99.com/telecom/index.html
${a_Addcustomer}    //h3/a[text()="Add Customer"]
${inp_Firstname}    //input[@id='fname']
${inp_Lastname}    //input[@id='lname']
${inp_email}    //input[@id='email']
${inp_address}    //textarea[@id='message']
${inp_phone}    //input[@id='telephoneno']
${btn_submit}    //input[@name='submit']
${btn_home}    //a[@class='button']
${a_ATBcustomer}    //a[@href="assigntariffplantocustomer.php"]
${inp_customerid}    //input[@id='customer_id']
${btn_submit2}    //input[@name='submit']
${verify_text1}    //h2[text()="Approved Tariff Plans"]
${customer_id}    //table[@class='alt access']//h3
${done}    //label[contains(text(),'Done')] 
${save_cusID}    //section[@id="main"]//h3 

${valid_ID}     Initial Value

*** Keywords ***
Set Shared Variable
    [Arguments]    ${value}
    Set Global Variable    ${valid_ID}    ${value}

Get Shared Variable
    [Return]    ${valid_ID}