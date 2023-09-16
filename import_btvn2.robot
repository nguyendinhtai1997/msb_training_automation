*** Settings ***
Library     SeleniumLibrary

Resource    ./btvn2/3_keywords/common.robot

Resource    ./btvn2/2_elements/guru_addCus.robot
Resource    ./btvn2/3_keywords/guru_addcus_keywords.robot

Resource    ./btvn2/2_elements/guru_login.robot
Resource    ./btvn2/3_keywords/guru_login_keywords.robot

Resource    ./btvn2/2_elements/tiki_timkiem_noichien.robot
Resource    ./btvn2/3_keywords/tiki_timkiem_noichien_keywords.robot

Resource    ./btvn2/2_elements/timkiemweb_msb.robot
Resource    ./btvn2/3_keywords/timkiemweb_msb_keywords.robot
