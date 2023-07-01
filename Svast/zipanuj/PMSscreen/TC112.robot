*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Serachfield
    insideSerachfield


*** Keywords ***
insideSerachfield
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/pms
    input text      Xpath://input[@placeholder='Search keyword']        All script
    input text      Xpath://input[@placeholder='Search keyword']        ECW
    input text      Xpath://input[@placeholder='Search keyword']        ICANotes
    input text      Xpath://input[@placeholder='Search keyword']        John
    input text      Xpath://input[@placeholder='Search keyword']        Mohni
    close browser