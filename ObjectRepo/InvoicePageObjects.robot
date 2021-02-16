*** Variables ***
${payment_option_now}    //button[@type='button']
${payment_method}    //div[@id='gateway_chosen']    
${payment_option}    //li[normalize-space()='Credit Card']
${cardholder_name}    //input[@id='card-holder-firstname']
${cardholder_lastname}    //input[@id='card-holder-lastname']
${cardnumber}    //input[@id='card-number']
${expiry_month}    //select[@id='expiry-month']
${optionvalue_expiry}    //option[@value='05']
${expiry_year}    //select[@id='expiry-year']
${optionvalue_yearexpiry}    //option[@value='2021']
${cvv}    //input[@id='cvv']
${paynowbutton}    //button[@type='submit'][normalize-space()='Pay Now']
${invalid_booking}    The merchant login ID or password is invalid or the account is inactive.
${bookingconfirmation}   Your booking status is Reserved
${payonarrival}    //button[@data-module='hotels']
