*** Settings ***
Library  SeleniumLibrary
Documentation       This file contains test cases related to valid login

Resource    ../resource/base/common_functionalities.resource

Test Setup    Launch Browser and Navigate to Url
Test Teardown    Close Browser
Library  DataDriver   file=../test_dataa/Caption_Project1.xlsx   sheet_name=ValidLoginTest
Test Template   Valid Login Template



*** Test Cases ***

TC1


*** Keywords ***

Valid Login Template


    [Arguments]   ${username}   ${password}      ${expected_result}
    Click Element    xpath=//a[@class='utility-item-link account utility-nav-wallet-svg']
    Click Element    xpath=//div[@class='account-signin']
    Input Text    name=loginEmail       ${username}
    Input Text    name=loginPassword    ${password}
    Click Element    name=Profilelogin

    Element Should Contain    xpath=//span[contains(@class,'middle-menu-title')]         ${expected_result}