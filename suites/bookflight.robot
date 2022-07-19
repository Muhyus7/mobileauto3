*** Settings ***
Documentation       Search BookFlight on signin
Resource            ../pageObjects/Bookflight/bookflight.robot
Resource            ../pageObjects/login/login.robot
Resource            ../pageObjects/Base/base.robot
Resource            ../pageObjects/homepage/homepage.robot


*** Test Cases ***
User Should Be Able To BookFlight
    [Setup]     Run Keywords        Open Flight Application
    ...         AND                 Verify Sign In Button in Homepage
    ...         AND                 Login with valid data           username_login=support@ngendigital.com  password_login=abc123
    Click Book for menu
    Click Round Trip
    Choose Data From City 
    Choose Data To City 
    Choose Data Class
    Picklist Startdate Flight
    Picklist Enddate Flight
    Choose radio button
    Choose checkbox
    Click Book for Bookflight
    Choose Price to confirm booking
    Click Confirm
    Verify Page Booked
    [Teardown]            Close Application