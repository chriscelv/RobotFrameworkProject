*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Resources.robot
Suite Setup     Opening browser
Suite Teardown  Closing browser

*** Test Cases ***
Alerts
    set selenium speed  2 seconds
    click button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #clicks ok button on alert
    handle alert  accept

    click button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #clicks cancel on alert
    handle alert  dismiss

    click button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #verify text on alert window
    alert should be present  Press a button!    #accepts by default

    #click button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #verify the text not there in the alert window
    #alert should not be present     test data

Browser Commands
    go to   ${anotherURL}
    go back


Drag And Drop
    drag and drop   xpath://*[@id="gallery"]/li[2]/img      xpath://*[@id="trash"]
    drag and drop   xpath://*[@id="gallery"]/li[1]/img      xpath://*[@id="trash"]
    drag and drop   xpath://*[@id="draggable"]/p             xpath://*[@id="droppable"]