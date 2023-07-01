*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Unfreezefilterbutton
    insideUnfreezefilterbutton


*** Keywords ***
insideUnfreezefilterbutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/workbench
    input text      Xpath://input[@placeholder='Global Search']     Self-Pay
    click button    xpath://button[@type='submit']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    click button    xpath://button[@ng-reflect-label='Freeze Filter']
    Click link  xpath://a[normalize-space()='Dashboard']
    Click link  xpath://a[normalize-space()='Workbench']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element    xpath://span[normalize-space()='Unfreeze Filter']
    Click link  xpath://a[normalize-space()='Dashboard']
    Click link  xpath://a[normalize-space()='Workbench']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   1
    Close browser
