*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
inputfiled
    insideinputfiled


*** Keywords ***
insideinputfiled
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/pms
    Click Element   xpath://tbody/tr[1]/td[6]/button[1]/span[1]
    Clear Element Text  xpath://div[6]//div[1]//input[1]
    input text      Xpath://div[6]//div[1]//input[1]        Account Number
    Clear Element Text  xpath://div[6]//div[1]//input[1]
    input text      Xpath://div[6]//div[1]//input[1]        Guarantor Last Name
    Sleep   1
    Close browser