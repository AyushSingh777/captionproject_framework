*** Settings ***
Library  SeleniumLibrary
Documentation       This file contains test cases related to valid login

Resource    ../resource/base/common_functionalities.resource

Test Setup    Launch Browser and Navigate to Url
Test Teardown    Close Browser
Library  DataDriver   file=../test_dataa/Caption_Project1.xlsx   sheet_name=InvalidLoginTest
Test Template   Invalid Login Template



*** Test Cases ***

TC1
TC2


*** Keywords ***

Invalid Login Template


    [Arguments]   ${username}   ${password}      ${expected_error}
    Click Element    xpath=//a[@class='utility-item-link account utility-nav-wallet-svg']
    Click Element    xpath=//div[@class='account-signin']
    Input Text    name=loginEmail       ${username}
    Input Text    name=loginPassword    ${password}
    Click Element    name=Profilelogin

    Element Should Contain    xpath=//a[contains(@class,'checkout-link')]         ${expected_error}