*** Settings ***
Resource    ..//imports.robot

*** Test Cases ***
Bai tap 01 - Viet lai bai tap 03 Buoi 1
    [Documentation]    Viet lai bai tap 03 - Buoi 1
    [Tags]    BTVN_01_03
    Truy cập google.com  https://www.google.com/    chrome
	
    Tìm kiếm từ khóa "MSB"    //*[@id="APjFqb"]    MSB

    Click ENTER để thực hiện tìm kiếm MSB

	Click vào kết quả tìm kiếm đầu tiên    //h3[text()='MSB']

	Click tắt Popup    //div[@id='fragment-34202-joci']//span[@class='pop-up-porlet-close-btn']

	Verify trang có chứa "Chọn thẻ phù hợp với bạn"    Chọn thẻ phù hợp với bạn