*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Clearfilterbutton
    insideClearfilterbutton


*** Keywords ***
insideClearfilterbutton
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
    click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    input text      Xpath://input[@placeholder='Global Search']     2885
    click button    xpath://button[@type='submit']
    click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    input text      Xpath://input[@placeholder='Global Search']     1602
    click button    xpath://button[@type='submit']
    click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1
    Close browser