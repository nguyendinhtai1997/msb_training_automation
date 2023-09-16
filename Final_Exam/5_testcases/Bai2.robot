*** Settings ***
Library     SeleniumLibrary
Resource    ../import_exam.robot


*** Test Cases ***

[TCS_B2] Create Task In Project
  [Documentation]  Create Task
  [Tags]     Bai2
  Open Browser   https://todoist.com/auth/login    chrome
  Login successfull user      nganht13@msb.com.vn      Hameunjung121297@
  Click project need to create task        Automation_MSB_Project
  Click Add task button  
  Input task and Submit successfull      Task1      Tạo task

