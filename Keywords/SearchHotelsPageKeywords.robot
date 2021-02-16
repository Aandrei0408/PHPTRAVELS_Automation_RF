*** Settings ***
Library    SeleniumLibrary
Library    Collections    
Resource    ../ObjectRepo/SearchHotelsPageObjects.robot

*** Keywords ***
Filter Hotels By Price
    Wait Until Element Is Visible    ${hightolow_filter}    
    Click Element    ${hightolow_filter}
    Check If Hotels Are Filtered By Price
Check If Hotels Are Filtered By Price
    ${hotels_count}    Get Element Count   ${hotels_available}
    ${hotels_prices}=    Create List    
    ${hotels_prices_tocompare}=    Create List    $150    $80    $50    $22        
    FOR    ${i}    IN RANGE    1    ${hotels_count} + 1
    ${hotelprice}=    Get Text   (${hotels_available})[${i}]
    Insert Into List    ${hotels_prices}    ${i}    ${hotelprice}     
    END 
    Log     ${hotels_prices}   
    Log     ${hotels_prices_tocompare} 
    Lists Should Be Equal    ${hotels_prices}    ${hotels_prices_tocompare}
                             
Select the n most expensive hotel
    Click Element    ${hotel_selected}
    