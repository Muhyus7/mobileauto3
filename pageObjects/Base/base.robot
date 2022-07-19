*** Settings ***
Documentation           Base Keyword Related
Library                 AppiumLibrary


*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     11
${DEVICE_NAME}          e5c7cdff
${ACTIVITY_NAME}        com.example.myapplication.MainActivity
${PACKAGE_NAME}         com.example.myapplication
${text_booked}          Your flight is booked. Reservation number is CADX2214
${textsearch}           DA935
${textsearch2}          DA 935

*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL} 
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appActivity=${ACTIVITY_NAME}
    ...                     appPackage=${PACKAGE_NAME}
    ...                     automationName=UiAutomator2
    ...                     newCommandTimeout=5000