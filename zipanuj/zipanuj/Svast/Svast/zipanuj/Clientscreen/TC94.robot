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
    go to   http://localhost:4200/#/admin/clients
    Click button   xpath://button[@class='p-element p-button-success mr-2 p-button p-component']
    input text      Xpath:/html/body/app-root/div/app-clients/p-dialog/div/div/div[2]/form/div/div[1]/div/input      Dr. Will Smith
    Click button   xpath:/html/body/app-root/div/app-clients/p-dialog/div/div/div[2]/form/button[2]
    Sleep   2
    Close browser