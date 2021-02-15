*** Variables ***
${myaccount_button}    //a[contains(normalize-space(),'My Account')]
${signup_button}    //a[text()='Sign Up']
${destination}    //div[@id='s2id_autogen16']//a
${input_destination}    //div[normalize-space()='Dubai, United Arab Emirates']
${checkin}        //input[@id='checkin']
${checkout}    //input[@id='checkout']
${selectadults}    //button[@class='btn btn-white bootstrap-touchspin-down ']
${selectchildren}    //div[@id='hotels']//div[2]//div[1]//div[2]//div[1]//span[1]//button[1]
${search}    //form[@name='HOTELS']//button[@type='submit'][normalize-space()='Search']
${featurehotel}    //a[@href='https://www.phptravels.net/hotels/united-kingdom/manchester/Malmaison-Manchester']