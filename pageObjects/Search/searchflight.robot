*** Settings ***
Documentation       Search Flight on signin
Variables           search.yaml

*** Variables ***
${textsearch}           DA935
${textsearch2}          DA 935

*** Keywords ***
Klik Search for menu
    Wait Until Element Is Visible       ${Searchmenu}
    Tap                                 ${Searchmenu}
Input Flight Number 
    Wait Until Element Is Visible       ${Input_flightnumber}
    Input Text                          ${Input_flightnumber}       ${textsearch} 
Klik Button search for Flight Number
    Wait Until Element Is Visible       ${Button_search2}
    Tap                                 ${Button_search2}
Verify Page Search Flight Number
    sleep                               2s
    Page Should Contain Text            ${textsearch2}
    
          
    
    
    
    
    
    
