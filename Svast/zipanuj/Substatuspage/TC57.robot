*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
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
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/sub-status
    Click button   xpath://tbody/tr[1]/td[6]/button[1]
    Clear Element Text  xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input
    input text      Xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input       Mona
    Select From LIst By Value   xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[1]/div/select     3
    Click button    xpath://button[@type='submit']
    Click button   xpath://tbody/tr[1]/td[6]/button[1]
    Click button   xpath://button[normalize-space()='Close']
    Click button   xpath://tbody/tr[1]/td[6]/button[1]
    Click Element   xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[1]/div/button/span[1]
    Sleep   2
    Close browser