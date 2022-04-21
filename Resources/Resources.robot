*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${blogspot}          https://testautomationpractice.blogspot.com/
${browser}      chrome
${anotherURL}                         https://google.com

*** Keywords ***
Opening browser
    open browser    ${blogspot}      ${browser}
    maximize browser window

Closing browser
    close all browsers

