*** Settings ***
Documentation       Login related keyword
Variables           login_locator.yaml


*** Keywords ***
Verify Login Page Appears
    Wait Until Element Is Visible       ${Input_username}
    Element Should Be Visible           ${Input_password}
    Element Should Be Visible           ${Buttonsignin_login}
Input Username
    [Arguments]                         ${username_login} 
    Input Text                          ${Input_username}           ${username_login} 
Input Password
    [Arguments]                         ${password_login}
    Input Text                          ${Input_password}           ${password_login}
Klik button signin to login Page
    Tap                                 ${Buttonsignin_login}

Login with valid data 
    [Arguments]                         ${username_login}           ${password_login}             
    Wait Until Element Is Visible       ${Input_username}
    Input Text                          ${Input_username}           ${username_login}
    Input Text                          ${Input_password}           ${password_login}
    Tap                                 ${Buttonsignin_login}