*** Settings ***

Resource    ../ObjectRepo/BookingDetailsPageObjects.robot
Resource    CommonPageKeywords.robot
Resource    ../TestData/BookingTestData.robot

Library    SeleniumLibrary

*** Keywords ***

Enter Personal Details For The Booking
    Wait Until Element Is Visible    ${booking_firstname}    
    Input Text    ${booking_firstname}    ${firstname}
    Input Text    ${booking_lastname}    ${lastname}    
    Input Text    ${booking_email}        ${email}
    Input Text    ${booking_email_confirm}     ${confirm_email}
    Input Text    ${booking_contact_no}    ${contact_number}
    Input Text    ${booking_adress}    ${adress}
    
Confirm Booking
    Wait Until Element Is Visible    ${confirm_booking}    
    Click Button    ${confirm_booking}
    
Confirm Booking For The Feature Offer  
    Identify And Click Element    ${confirm_booking}
