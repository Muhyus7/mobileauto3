*** Settings ***
Documentation       Login User
Resource            ../pageObjects/login/login.robot
Resource            ../pageObjects/Base/base.robot
Resource            ../pageObjects/homepage/homepage.robot
Suite Setup         Open Flight Application
Suite Teardown      Close Application

*** Test Cases ***
User Should Be Able Login Appears
    Verify Homepage Appears                                                                                  #Homepage
    Verify Sign In Button in Homepage   
    Verify Login Page Appears                                                              #Login
    Input Username                      username_login=support@ngendigital.com                       #Login
    Input Password                      password_login=abc123                                                       #Login
    Klik button signin to login Page                                                            #Login
    Verify User Success to login                                                                            #Homepage

# User Should Be Able Login with Invalid Data Username
#     Verify Homepage Appears                                                                                  #Homepage
#     Verify Sign In Button in Homepage   
#     Verify Login Page Appears                                                              #Login
#     Input Username                      username_login=support777@ngendigital.com                       #Login
#     Input Password                      password_login=abc123                                                       #Login
#     Klik button signin to login Page                                                            #Login
#     Verify User Error to login                                                                            #Homepage

# User Should Be Able Login with Invalid Data Password
#     Verify Homepage Appears                                                                                  #Homepage
#     Verify Sign In Button in Homepage   
#     Verify Login Page Appears                                                              #Login
#     Input Username                      username_login=support@ngendigital.com                       #Login
#     Input Password                      password_login=abc1234                                                       #Login
#     Klik button signin to login Page                                                            #Login
#     Verify User Error to login                                                                            #Homepage