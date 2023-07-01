*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Editbutton
    insideEditbutton


*** Keywords ***
insideEditbutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  2 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/status
    click Element    xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    clear element text        xpath:/html/body/app-root/div/app-status/p-dialog/div/div/div[2]/form/div/div/div/input
    input text      Xpath:/html/body/app-root/div/app-status/p-dialog/div/div/div[2]/form/div/div/div/input  xyz65
    click button    xpath://button[@type='submit']
    click Element    xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    click button    xpath://button[normalize-space()='Close']
    click Element    xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    click Element    xpath:/html/body/app-root/div/app-status/p-dialog/div/div/div[1]/div/button/span
    close browser
