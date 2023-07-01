*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Frequency
    insideFrequency


*** Keywords ***
insideFrequency
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/action-tracker
    Click Element   xpath://select[@aria-label='Frequency']
    Click Element   xpath://div[@class='row justify-content-center']
    Select from list by value   //select[@aria-label='Frequency']       3
    Sleep   2
    Close browser
