*** Settings ***
Documentation       Verify Homepage Application
Resource            ../pageObjects/homepage/homepage.robot
Resource            ../pageObjects/Base/base.robot
Test Setup          Open Flight Application
Test Teardown       Close Application

*** Test Cases ***
User Should Be Able Homepage Appears
    Verify Homepage Appears
    Verify Sign In Button in Homepage