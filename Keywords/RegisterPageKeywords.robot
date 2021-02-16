*** Settings ***
Documentation    This page contains keywords used for registration page
Library    SeleniumLibrary
Resource    ../ObjectRepo/RegisterPageObjects.robot

*** Keywords ***    
Fill Form With Valid Credentials
    Input Text    ${firstname}    Ana
    Input Text    ${lastname}    A
    Input Text    ${mobilenumber}    0123425
    Input Text       ${email}    email12@gmail.com
    Input Password    ${password}    password    
    Input Password    ${confirmpassword}    password 
Check If Message Is Displayed For Invalid Registration
    [Documentation]    Register with already used email
    Wait Until Page Contains    ${email_not_valid_message}
Submit Registration Form
        Submit Form   
