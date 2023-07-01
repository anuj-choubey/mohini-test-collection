*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
ServicedateASC
    insideServicedateASC


*** Keywords ***
insideServicedateASC
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Click Element   xpath://span[@class='ng-tns-c68-6 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']
    Click Element   xpath://span[normalize-space()='By Service Date ASC']
    #execute javascript  window.scrollTo(500,0)
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)
    #execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   2
    Close browser




