*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
firstpageshouldopen
    insidefirstpageshouldopen


*** Keywords ***
insidefirstpageshouldopen
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/sub-status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    click button    xpath://button[normalize-space()='2']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click link  xpath://a[normalize-space()='Dashboard']
    go to   http://localhost:4200/#/admin/sub-status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Element should be Disabled  xpath://button[@class='p-ripple p-element p-paginator-first p-paginator-element p-link p-disabled ng-star-inserted']
    Sleep   2
    close browser
