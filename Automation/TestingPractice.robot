*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Resources.robot
Suite Setup     Opening browser
Suite Teardown  Closing browser

*** Test Cases ***
Alerts
    Set Selenium Speed  2 seconds
    Click Button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #clicks ok button on alert
    Handle Alert  accept

    Click Button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #clicks cancel on alert
    Handle Alert  dismiss

    Click Button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #verify text on alert window
    Alert Should Be Present  Press a button!    #accepts by default

    #click button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #verify the text not there in the alert window
    #alert should not be present     test data

Browser Commands
    Go To   ${anotherURL}
    Go Back


Drag And Drop
    Drag and Drop   xpath://*[@id="gallery"]/li[2]/img      xpath://*[@id="trash"]
    Drag and Drop   xpath://*[@id="gallery"]/li[1]/img      xpath://*[@id="trash"]
    Drag and Drop   xpath://*[@id="draggable"]/p             xpath://*[@id="droppable"]

Dropdown
    Select From List By Index       speed           2
    Select From List By Value       files           3
    Select From List By Label       products        Iphone

