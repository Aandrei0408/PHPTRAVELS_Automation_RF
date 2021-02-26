*** Settings ***
Library    SeleniumLibrary
Resource    ../Settings/Common.robot
Resource    ../ObjectRepo/CommonPageObjects.robot

*** Keywords ***
Begin Test HomeURL
    Open Browser    ${home_URL}    ${BROWSER}
    Maximize Browser Window
    
End Test
    Delete All Cookies
    Close Browser
    
Go To Home Page
    Go To    ${home_URL}
    
Accept Cookies
    Click Element    ${cookies} 
     
Identify And Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Set Focus To Element    ${locator}
    Set Selenium Implicit Wait    15
    Click Element    ${locator} 
   