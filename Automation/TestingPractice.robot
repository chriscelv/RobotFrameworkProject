*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Resources.robot
Suite Setup     Opening browser
Suite Teardown  Closing browser

*** Test Cases ***
Alerts
    Click Button        xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #clicks ok button on alert
    Handle Alert        accept

    Click Button   xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #clicks cancel on alert
    Handle Alert   dismiss

    Click Button    xpath://div[@class="widget-content"]/button[text()="Click Me"]
    #verify text on alert window
    Alert Should Be Present     Press a button!    #accepts by default

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

Validation And Input Test
    ${input_txt}    Set Variable    xpath://*[@id="Wikipedia1_wikipedia-search-input"]
    Element Should Be Enabled   ${input_txt}
    Element Should Be Visible   ${input_txt}
    Input Text                  ${input_txt}    sample text
    Press Keys                  ${input_txt}      ENTER
    Clear Element Text          ${input_txt}
    Input Text                  ${input_txt}      automation
    Click Button                xpath://*[@id="Wikipedia1_wikipedia-search-form"]/div/span[2]/span[2]/input

Mouse Action
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button

Scroll Test
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)   #scroll to bottom of page
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)  #scroll to top of page
    Execute Javascript  window.scrollTo(0,1000)    #scroll to specific px
    Scroll Element Into View  xpath://*[@id="HTML1"]/h2   #scroll to specific element

Screen Robot
    #must update path for the screenshot
    Capture Element Screenshot  xpath://*[@id="HTML1"]/h2   /Users/user/DocumentsHTMLTable.png
    Capture Page Screenshot     /Users/user/Documents.png

Table Validation
    ${rows}     Get Element Count   xpath://*[@name="BookTable"]/tbody/tr
    ${columns}  Get Element Count   xpath://*[@name="BookTable"]/tbody/tr/th
    Log To Console      ${rows}
    Log To Console      ${columns}

    ${data}     Get Text        xpath://*[@name="BookTable"]/tbody/tr[5]/td[3]
    Log To Console      ${data}

    Table Should Contain            xpath://*[@name="BookTable"]        Master In Selenium
    Table Row Should Contain        xpath://*[@name="BookTable"]        3       Java
    Table Cell Should Contain       xpath://*[@name="BookTable"]        4       3      Javascript
    Table Header Should Contain     xpath://*[@name="BookTable"]        Author

Windows
    Click Element       xpath://*[@id="Attribution1"]/div[1]/a[2]
    Select Window       Automation Testing Practice