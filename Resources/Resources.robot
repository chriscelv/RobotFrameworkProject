*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${blogspot}          https://testautomationpractice.blogspot.com/
${browser}           chrome
${anotherURL}        https://google.com

*** Keywords ***
Opening Browser
    Open Browser    ${blogspot}      ${browser}
    Maximize Browser Window
    Set Selenium Speed  2 seconds

Closing Browser
    Close All Browsers

