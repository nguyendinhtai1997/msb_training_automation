*** Settings ***
Resource    ../imports.robot


*** Test Cases ***
BTVN 2
    [Documentation]    Bai tap ve nha 2
    [Tags]    btvn_2
    Visit page    https://demo.guru99.com/telecom/index.html    chrome
    Click Add customer    //div[@class='flex-item left']/div[1]/h3[1]/a
    Click background check    //div[@class="2u 12u$(small)"]/label[@for="done"]
    Input firstName    //input[@id="fname"]    nga
    Input lastName    ${input_last_name}    kh
    Input Email    //input[@id="email"]    nga@mail.com
    Input address    //textarea[@name="addr"]    HN
    Input mobile number    //input[@id="telephoneno"]    0987810971
    Click button Submit    //div[@class="12u$"]/ul[1]/li[1]/input[1]
    Wait Until Element Is Visible    //td[@align="center"]/h3[1]    5s
    Back to Home    //a[@class="button"]
    Visit page Add Tariff Plan to Customer    //a[@href="assigntariffplantocustomer.php"]
    Input customerID    //input[@id="customer_id"]    008838
    Click button Submit    //div[@class="3u 12u$(small)"]/input[@value="submit"]
    Wait Until Element Is Visible    //div[@class="inner"]/h2[1]    10s
