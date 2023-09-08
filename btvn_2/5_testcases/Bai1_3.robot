*** Settings ***
Resource    ../imports.robot


*** Test Cases ***
[AUT_03] - Bài tập về nhà 03
    [Documentation]    Bài tập về nhà 03
    [Tags]    btvn_1_3
    Truy cập trang google    https://www.google.com/    chrome
    Tìm kiếm từ khóa    //textarea[@id = "APjFqb"]    MSB
    Button Tìm Kiếm
    Click vào kết quả tìm kiếm số mot    //div[@class='OBMEnb']/ul[1]/li[1]
    Tắt Popup    //div[@id="fragment-34202-joci"]/div/div/div/span
    Verify trang có chứa Chọn thẻ phù hợp với bạn    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]
