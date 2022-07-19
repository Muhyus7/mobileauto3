*** Settings ***
Documentation       Search Flight on signin
Resource            ../pageObjects/login/login.robot
Resource            ../pageObjects/Base/base.robot
Resource            ../pageObjects/Search/searchflight.robot
Resource            ../pageObjects/homepage/homepage.robot



*** Test Cases ***
User Should Be Able To Search Flight
    [Setup]     Run Keywords        Open Flight Application
    ...         AND                 Verify Sign In Button in Homepage
    ...         AND                 Login with valid data           username_login=support@ngendigital.com  password_login=abc123             
    Klik Search for menu
    Input Flight Number 
    Klik Button search for Flight Number
    Verify Page Search Flight Number
    [Teardown]  Close Application
    
    #Element Should Be Visible   //*[@class='android.widget.TextView']//*[contains(text(),"DA 935")]
    #Element locator '//android.widget.TextView[@id=welcome.pages.welcome.title"]' did not match any elements after 30 seconds
    #xpath=//android.widget.Button[@index='7']/android.view.View[@index='0'] while android.view.View[@index='0']


    
    
