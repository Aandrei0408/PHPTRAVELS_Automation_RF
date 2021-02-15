*** Settings ***
Library    SeleniumLibrary
Resource    ../ObjectRepo/AccountPageObjects.robot
*** Keywords ***
Check If User Is Registerd
    Wait Until Page Contains   ${valid_register_message}
    Wait Until Page Contains Element    ${myprofile}    
