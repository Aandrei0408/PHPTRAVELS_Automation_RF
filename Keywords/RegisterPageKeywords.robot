*** Settings ***
Documentation    This page contains keywords used for registration page
Library    SeleniumLibrary
Resource    ../ObjectRepo/RegisterPageObjects.robot
Resource    ../TestData/RegisterTestData.robot

*** Keywords ***    
Fill Form With Valid Credentials
    Input Text    ${firstname}    ${firstnamevalue}
    Input Text    ${lastname}    ${lastnamevalue}
    Input Text    ${mobilenumber}   ${mobilenumbervalue}
    Input Text       ${email}    ${emailvalue}
    Input Password    ${password}    ${passwordvalue}    
    Input Password    ${confirmpassword}    ${confirmpasswordvalue}
    
Check If Message Is Displayed For Invalid Registration
    [Documentation]    Register with already used email
    Wait Until Page Contains    ${email_not_valid_message}
    
Submit Registration Form
        Submit Form   
