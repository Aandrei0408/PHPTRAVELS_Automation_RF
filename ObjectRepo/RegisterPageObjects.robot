*** Settings ***
Documentation    This page contains objects related to registration page

*** Variables ***
${firstname}    //input[@name='firstname']
${lastname}    //input[@name='lastname']
${mobilenumber}    //input[@name='phone']
${email}    //input[@name='email']
${password}    //input[@name='password']
${confirmpassword}    //input[@name='confirmpassword']
${signup_button}    //button[contains(text(),'Sign Up')]
${email_not_valid_message}    The Email field is required.