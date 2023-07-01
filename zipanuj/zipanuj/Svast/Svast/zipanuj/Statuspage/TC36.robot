*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Deletbutton
    insideDeletebutton


*** Keywords ***
insideDeletebutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/status
    Click Element   xpath://tbody/tr[1]/td[5]/button[2]/span[1]
    Element text should be      Xpath://div[@class='p-dialog-content ng-tns-c112-4']       Are you sure you want to delete?
    Click Element   xpath://span[normalize-space()='No']
    Click Element   xpath://tbody/tr[1]/td[5]/button[2]/span[1]
    Element text should be      Xpath://div[@class='p-dialog-content ng-tns-c112-4']       Are you sure you want to delete?
    Click Element   xpath://span[@class='pi pi-times ng-tns-c112-4']
    Click Element   xpath://tbody/tr[1]/td[5]/button[2]/span[1]
    Element text should be      Xpath://div[@class='p-dialog-content ng-tns-c112-4']       Are you sure you want to delete?
    Click button    xpath://button[@class='p-ripple p-element ng-tns-c112-4 p-confirm-dialog-accept p-button p-component ng-star-inserted']
    close browser