*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Uploadscreen
    insideuploadscreen


*** Keywords ***
insideuploadscreen
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  5 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    click link      xpath://a[normalize-space()='Upload']
    close browser
