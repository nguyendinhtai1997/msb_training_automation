*** Settings ***
Library     SeleniumLibrary
Resource    ../import_exam.robot

*** Test Cases ***
[TCS_B1] Create project for Todoist page
  [Documentation]  Create Project
  [Tags]     Bai1
  
   Open Browser         https://todoist.com/auth/login    chrome
   Login successfull user      nganht13@msb.com.vn      Hameunjung121297@
   Click Add Project button
   Create Project successfull    Automation_MSB_Project 
  