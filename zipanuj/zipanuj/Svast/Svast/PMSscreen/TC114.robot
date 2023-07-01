*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Addinput
    insideAddinput


*** Keywords ***
insideAddinput
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/pms
    Click Element   xpath://tbody/tr[1]/td[6]/button[1]/span[1]
    click button    xpath://button[normalize-space()='Add Input']
    click button    xpath://button[normalize-space()='Add Input']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   1
    Close browser