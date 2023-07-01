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
    Click button    xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    #Element text should be      Xpath:/html/body/app-root/div/app-dashboard/p-confirmdialog/div/div/div[2]/span       Are you sure you want to delete?
    Click Element   xpath://span[@class='pi pi-times ng-tns-c112-1']
    Click button    xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Click button    xpath://button[@class='p-ripple p-element ng-tns-c112-1 p-confirm-dialog-accept p-button p-component ng-star-inserted']
    Click button    xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[7]/button[2]
    click button    xpath://button[@class='p-ripple p-element ng-tns-c112-1 p-confirm-dialog-reject p-button p-component ng-star-inserted']
    close browser


