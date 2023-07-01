*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Agent&clientvalidation
    insideAgent&clientvalidation


*** Keywords ***
insideAgent&clientvalidation
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/map-manager
    Click Element   xpath://tbody/tr[@class='ng-star-inserted']/td[3]/p-chip[1]/div[1]/i[1]
    Click button    xpath:/html/body/app-root/div/app-claims-assign/p-confirmdialog/div/div/div[3]/button[2]
    Click Element   xpath://tbody/tr[@class='ng-star-inserted']/td[4]/p-chip[1]/div[1]/i[1]
    Click button    xpath:/html/body/app-root/div/app-claims-assign/p-confirmdialog/div/div/div[3]/button[2]
    Click Element   xpath:/html/body/app-root/div/app-claims-assign/div/div[2]/div[2]/p-multiselect/div/div[3]/span
    Element Should Be Visible   xpath://span[normalize-space()='Sapna Mary']
    Click Element   xpath:/html/body/app-root/div/app-claims-assign/div/div[2]/div[3]/p-multiselect/div/div[3]/span
    Element Should Be Visible   xpath://span[normalize-space()='MGC_069!A1']
    Sleep   2
    Close browser