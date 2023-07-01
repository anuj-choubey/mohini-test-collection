*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Searchname
    insideSearchname


*** Keywords ***
insideSearchname
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/sub-status
    input text      Xpath://input[@placeholder='Search Name']       CALL BACKS
    Clear Element Text  xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       Invalid NDC
    Clear Element Text  xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       xyz
    Clear Element Text  xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       W-9 form
    Sleep   1
    close browser
