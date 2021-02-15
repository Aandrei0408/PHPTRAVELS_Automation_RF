*** Settings ***
Documentation    This page contains..
Library    SeleniumLibrary
Resource    ../ObjectRepo/InvoicePageObjects.robot
Resource    HotelDetailsPageKeywords.robot
Resource    CommonPageKeywords.robot

*** Keywords ***      
Select Payment Option On Arrival
    Identify And Click Element    ${payonarrival} 
    Handle Alert    ACCEPT
Enter Payment Details
    Input Text    ${cardholder_name}    Ana
    Input Text    ${cardholder_lastname}    Maria
    Input Text    ${cardnumber}    1230000000
    Click Element    ${expiry_month}
    Click Element    ${optionvalue_expiry} 
    Click Element    ${expiry_year}
    Click Element    ${optionvalue_yearexpiry}
    Input Text    ${cvv}    123   
Confirm Payment
    Click Button   ${paynowbutton}
Check If Booking Is Confirmed
    Wait Until Page Contains    ${bookingconfirmation}
Check If Booking Is Confirmed After Payment
    Page Should Contain   The merchant login ID or password is invalid or the account is inactive
Select Pay Now
    Wait Until Page Contains    Summary    10
    Accept Cookies 
    Identify And Click Element    ${payment_option_now}
    Identify And Click Element    ${payment_method}
    Identify And Click Element    ${payment_option} 
        