*** Settings ***
Library     SeleniumLibrary

Resource    ./3_keywords/common.robot

Resource    ./2_elements/guru_addCus.robot
Resource    ./3_keywords/guru_addcus_keywords.robot

Resource    ./2_elements/guru_login.robot
Resource    ./3_keywords/guru_login_keywords.robot

Resource    ./2_elements/tiki_timkiem_noichien.robot
Resource    ./3_keywords/tiki_timkiem_noichien_keywords.robot

Resource    ./2_elements/timkiemweb_msb.robot
Resource    ./3_keywords/timkiemweb_msb_keywords.robot
