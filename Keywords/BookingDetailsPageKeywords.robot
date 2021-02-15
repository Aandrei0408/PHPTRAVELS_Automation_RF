*** Settings ***
Resource    ../ObjectRepo/BookingDetailsPageObjects.robot
Resource    CommonPageKeywords.robot

Library    SeleniumLibrary

*** Keywords ***
Enter Personal Details For The Booking
    Wait Until Element Is Visible    ${booking_firstname}    
    Input Text    ${booking_firstname}    Ana
    Input Text    ${booking_lastname}    Maria    
    Input Text    ${booking_email}        email@gmail.com
    Input Text    ${booking_email_confirm}     email@gmail.com
    Input Text    ${booking_contact_no}    0700000000
    Input Text    ${booking_adress}    MyAdress
Confirm Booking
    Wait Until Element Is Visible    ${confirm_booking}    
    Click Button    ${confirm_booking}
Confirm Booking For The Feature Offer  
    Identify And Click Element    ${confirm_booking}
