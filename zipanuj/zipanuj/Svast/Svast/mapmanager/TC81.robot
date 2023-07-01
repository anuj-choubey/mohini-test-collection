*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Onlymanagerselect
    insideOnlymanagerselect


*** Keywords ***
insideOnlymanagerselect
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/map-manager
    Click Element   xpath:/html/body/app-root/div/app-claims-assign/div/div[2]/div[1]/p-dropdown/div/span
    Click Element   xpath://div[contains(text(),'sanjayy')]
    Click button    xpath://button[@class='p-element p-button p-component']
    Sleep   1
    Close browser