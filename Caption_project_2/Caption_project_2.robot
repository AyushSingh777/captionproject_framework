*** Settings ***
Library     AppiumLibrary
Documentation     Working with education mock test app
*** Test Cases ***

    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    ...     appPackage=com.practicemock.practicemock
    ...     appActivity=com.practicemock.practicemock.ui.component.splash.SplashScreenActivity



    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.practicemock.practicemock:id/signin_email_input']       20s
    Click Element    xpath=//android.widget.EditText[@resource-id='com.practicemock.practicemock:id/signin_email_input']
    Input Text    xpath=//android.widget.EditText[@resource-id='com.practicemock.practicemock:id/signin_email_input']    ayushpratap149@gmail.com

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='com.practicemock.practicemock:id/signin_password_input']    30s
    Click Element    xpath=//android.widget.EditText[@resource-id='com.practicemock.practicemock:id/signin_password_input']
    Input Text    xpath=//android.widget.EditText[@resource-id='com.practicemock.practicemock:id/signin_password_input']    Ayush@149


    Hide Keyboard


    Wait Until Page Contains Element    xpath=//android.widget.Button[@resource-id='com.practicemock.practicemock:id/signin_btn']      30s
    Click Element    xpath=//android.widget.Button[@resource-id='com.practicemock.practicemock:id/signin_btn']

    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@resource-id='com.practicemock.practicemock:id/iv_popup_close']       30s
    Click Element     xpath=//android.widget.ImageView[@resource-id='com.practicemock.practicemock:id/iv_popup_close']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Banking']        30s
    Click Element    xpath=//android.widget.TextView[@text='Banking']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='SSC/Railways']    30s
    Click Element    xpath=//android.widget.TextView[@text='SSC/Railways']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Proceed']      30s
    Click Element    xpath=//android.widget.Button[@text='Proceed']

    ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='SSC CGL Tier I']
    WHILE    ${count}==0
        Swipe By Percent    90   70    90    30
        ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='SSC CGL Tier I']
    END

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='SSC CGL Tier I']    30s
    Click Element    xpath=//android.widget.TextView[@text='SSC CGL Tier I']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='100 Qns']    30s
    Click Element    xpath=//android.widget.TextView[@text='100 Qns']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='SSC CGL 2021 - Tier I']    30s
    Element Should Contain Text    xpath=//android.widget.TextView[@text='SSC CGL 2021 - Tier I']       SSC CGL 2021 - Tier I

    [Teardown]  Close Application