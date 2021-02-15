*** Settings ***
Library    SeleniumLibrary   
Resource    ../ObjectRepo/HotelDetailsPageObjects.robot
Resource    CommonPageKeywords.robot    

*** Keywords ***
Check hotel is selected
    Wait Until Page Contains    ${selected_hotel}    
    ${hotel_name}=    Get Text    ${selected_hotel}
Book Hotel By Selecting Details
    Accept Cookies    
    Wait Until Page Contains Element    ${selectroom}     
    Click Element    ${selectroom}    
    Click Element   ${booknow_button}   
Book Offer By Selecting Details
    Accept Cookies    
    Wait Until Page Contains Element    ${selectroom_featureoffer}
    Click Element    ${selectroom_featureoffer}
    Wait Until Element Is Visible   ${booknow_button}     
    Click Element    ${booknow_button}