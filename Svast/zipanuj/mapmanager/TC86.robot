*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
agent&client
    insideagent&client


*** Keywords ***
insideagent&client
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/map-manager
    Click Element   xpath:/html/body/app-root/div/app-claims-assign/div/div[2]/div[2]/p-multiselect/div/div[2]/div
    Click Element   xpath://span[normalize-space()='Sapna Mary']
    Click Element   xpath:/html/body/app-root/div/app-claims-assign/div/div[2]/div[3]/p-multiselect/div/div[3]/span
    Click Element   xpath://span[normalize-space()='MGC_069!A1']
    Click button    xpath://button[@class='p-element p-button p-component']
    Sleep   2
    Close browser