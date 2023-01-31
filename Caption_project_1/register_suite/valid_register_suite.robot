*** Settings ***
Library  SeleniumLibrary
Documentation       This file contains test cases related to valid login

Resource    ../resource/base/common_functionalities.resource

Test Setup    Launch Browser and Navigate to Url
Test Teardown    Close Browser
Library  DataDriver   file=../test_dataa/Caption_Project1.xlsx   sheet_name=ValidRegister
Test Template   Valid Register Template


*** Test Cases ***
TC1

*** Keywords ***
Valid Register Template
    [Arguments]   ${username}   ${password}      ${expected_result}
    Click Element    xpath=//a[@class='utility-item-link account utility-nav-wallet-svg']
    Click Element    xpath=//div[@class='account-signin']
    Input Text    name=loginEmail       ${username}
    Input Text    name=loginPassword    ${password}
    Click Element    name=Profilelogin

    Click Element    xpath=//span[@class='middle-menu-title']
    Mouse Over      link=Men
    Click Element    link=Men's Dress Clothing
    Click Element    xpath=//div[@class='dy-lb-close']
    Click Element    xpath=//p[text()='Suits & Suit Separates']
    Scroll Element Into View    xpath=//img[@class='pmp-hero-img']
    Click Element    xpath=//img[@class='pmp-hero-img']
    Click Element    xpath=//a[contains(normalize-space(),'38 SHORT')]
    Click Element    xpath=//a[contains(normalize-space(),'42 SHORT')]
    Click Element    name=pdp-addtobag
    Click Element    xpath=//button[@class='btn btn-primary']
    Element Should Contain    xpath=//span[contains(text(),'Apply Coupons')]    ${expected_result}

