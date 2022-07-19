*** Settings ***
Documentation       Search BookFlight on signin
Variables           book_flight.yaml





*** Keywords ***
Click Book for menu
    Wait Until Page Contains Element    ${Searchmenubook}
    Tap                                 ${Searchmenubook}
Click Round Trip
    Wait Until Page Contains Element    ${round_trip} 
    Tap                                 ${round_trip} 
Choose Data From City 
    Tap                                 ${tap_fromcity}
    Wait Until Page Contains Element    ${tap_fromcitychicago}
    Click Element                       ${tap_fromcitychicago}
Choose Data To City 
    Tap                                 ${tap_tocity}
    Wait Until Page Contains Element    ${tap_tocityparis}
    Tap                                 ${tap_tocityparis}
Choose Data Class
    Tap                                 ${tap_class}
    Wait Until Page Contains Element    ${tap_classbusiness}
    Tap                                 ${tap_classbusiness}
Picklist Startdate Flight
    Tap                                 ${startdate}
    Wait Until Page Contains Element    ${klikstartdate}
    Click Element                       ${klikstartdate}
    Tap                                 ${okstartdate}
Picklist Enddate Flight
    Tap                                 ${enddate}
    Wait Until Page Contains Element    ${klikenddate}
    Click Element                       ${klikenddate}
    Tap                                 ${okenddate}  
Choose radio button
    Click Element                       ${flighthotel}
Choose checkbox
    Click Element                       ${checkboxday}
Click Book for Bookflight
    Tap                                 ${bookflight}
Choose Price to confirm booking
    Wait Until Page Contains Element    ${price}
    Tap                                 ${price}
Click Confirm
    Tap                                 ${buttonprice}
Verify Page Booked
    Element Should Contain Text         ${booked}               ${text_booked}      	
    
    
   
                   
    
    
    
    
    
    


          
    
    
    
    
    
    
