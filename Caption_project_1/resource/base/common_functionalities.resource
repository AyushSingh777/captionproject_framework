*** Settings ***
Documentation       This resource file contains browser configuration
...     and reusable scripts

Library     SeleniumLibrary

*** Variables ***
${BROWSER_NAME}     chrome
${URL}      https://www.kohls.com/


*** Keywords ***
Launch Browser and Navigate to Url
        Open Browser        browser=${BROWSER_NAME}
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    url=${URL}

