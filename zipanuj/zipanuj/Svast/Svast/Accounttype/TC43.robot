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
    go to   http://localhost:4200/#/admin/account-type
    Click Element   xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    Clear Element Text  xpath:/html/body/app-root/div/app-account-type/p-dialog/div/div/div[2]/form/div/div/div/input
    input text      Xpath:/html/body/app-root/div/app-account-type/p-dialog/div/div/div[2]/form/div/div/div/input       Mohni
    Click button    xpath://button[@type='submit']
    Click Element   xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    input text      Xpath:/html/body/app-root/div/app-account-type/p-dialog/div/div/div[2]/form/div/div/div/input       REVIEW
    Click button    xpath://button[@type='submit']
    Click Element   xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    Click button    xpath://button[normalize-space()='Close']
    Click Element   xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    Click Element   xpath:/html/body/app-root/div/app-account-type/p-dialog/div/div/div[1]/div/button/span
    Sleep   2
    close browser
