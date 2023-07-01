*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Newbutton
    insideNewbutton


*** Keywords ***
insideNewbutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/sub-status
    Click Element   xpath://span[normalize-space()='New']
    click button    xpath://button[normalize-space()='Close']
    Click Element   xpath://span[normalize-space()='New']
    Click Element   xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[1]/div/button/span
    Click Element   xpath://span[normalize-space()='New']
    Select from list by value   //select[@aria-label='Default select example']      6
    input text      Xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input      mno
    Click button    xpath://button[normalize-space()='Submit']
    Sleep   1
    close browser
