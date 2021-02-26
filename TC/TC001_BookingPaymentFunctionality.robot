*** Settings ***
Documentation    End to end test to verify payment functionality 
Library    SeleniumLibrary

Resource    ../Settings/Common.robot
Resource    ../Keywords/CommonPageKeywords.robot
Resource    ../Keywords/HomePageKeywords.robot
Resource    ../Keywords/RegisterPageKeywords.robot
Resource    ../Keywords/AccountPageKeywords.robot
Resource    ../Keywords/SearchHotelsPageKeywords.robot
Resource    ../Keywords/HotelDetailsPageKeywords.robot
Resource    ../Keywords/BookingDetailsPageKeywords.robot
Resource    ../Keywords/InvoicePageKeywords.robot

Suite Setup    Begin Test HomeURL
Suite TearDown    End Test

*** Test Cases ***
User should be able to book hotel
    [Documentation]    Newly registered user  should be able to generate invoice and make payment after registering to website and selecting destination preffered
    Go To SignUp Page
    Fill Form With Valid Credentials
    Submit Registration Form
    Check If User Is Registerd
    Go To Home Page
    Select Booking Destination Details
    Filter Hotels By Price
    Select the n most expensive hotel
    Book Hotel By Selecting Details
    Confirm Booking
    Select Payment Option On Arrival
    Check if booking is confirmed
    Go To Home Page
    Select Feature Offer
    Book Offer By Selecting Details
    Confirm Booking For The Feature Offer
    Select Pay Now
    Enter Payment Details
    Confirm Payment
    Check If Booking Is Confirmed After Payment
        