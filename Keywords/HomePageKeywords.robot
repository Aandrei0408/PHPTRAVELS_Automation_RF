*** Settings ***
Library    SeleniumLibrary
Resource    ../ObjectRepo/HomePageObjects.robot

*** Keywords ***
Go To SignUp Page
    Click Element    ${myaccount_button}    
    Click Element    ${signup_button}    
Select Destination         
   Click Element   ${destination}  
   Wait Until Element Is Visible    ${input_destination}
   Click Element   ${input_destination}
Select Dates
    Click Element    ${checkin}    
    Click Element    ${checkout}
Select Number Of Adults
    Click Button    ${selectadults} 
    Click Button    ${selectadults} 
Select Number Of Children
    Click Button    ${selectchildren} 
    Click Button    ${selectchildren} 
Search For Destination 
    Submit Form  
Select Feature Offer
    Click Link    ${featurehotel}
Select Booking Destination Details
    Select Destination
    Select Dates
    Select Number Of Children
    Search For Destination
     