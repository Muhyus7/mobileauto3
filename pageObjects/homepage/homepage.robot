*** Settings ***
Documentation       Homepage Keyword Related
Variables           homepage_locator.yaml


*** Keyword ***
Verify Homepage Appears
    Wait Until Element Is Visible       ${logo_homepage}    
    Element Should Be Visible           ${mainImage_homepage}
Verify Sign In Button in Homepage
    Tap                                 ${Buttonsignin} 
    sleep                               1s
Verify User Success to login  
    Wait Until Element Is Visible       ${username_homepage}   
# Verify User Error to login 
#     Page Should Contain                 invalid username/password  
    