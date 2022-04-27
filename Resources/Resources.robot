*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${blogspot}          https://testautomationpractice.blogspot.com/
${browser}      chrome
${anotherURL}                         https://google.com

*** Keywords ***
Opening Browser
    Open Browser    ${blogspot}      ${browser}
    Maximize Browser Window

Closing Browser
    close all browsers

