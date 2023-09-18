*** Variables ***
${link_addCustomer}         (//a[text()='Add Customer'])[1]

${label_done}               //label[text()='Done']

${inP_fname}                //input[@id='fname']

${inP_lname}                //input[@id='lname']

${inP_email}                //input[@id='email']

${inP_message}              //textarea[@id='message']

${inP_telephoneno}          //input[@id='telephoneno']

${btn_submit}               //input[@name='submit']

${txt_accessDetails}        //h1[text()='Access Details to Guru99 Telecom']

${text_CustomerID}          //b[text()='Customer ID']//following::h3

${link_home}                (//a[text()='Home'])[1]

${link_addTariffPlan}       (//a[text()='Add Tariff Plan to Customer'])[1]

${inP_customerID}           //input[@id='customer_id']

${txt_approvedTariff}       //h2[text()='Approved Tariff Plans']
