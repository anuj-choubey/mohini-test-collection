*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Deletebutton
    insideDeletebutton


*** Keywords ***
insideDeletebutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/action-code
    Click button   xpath://body[1]/app-root[1]/div[1]/app-action-code[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Element Text Should Be  xpath:/html/body/app-root/div/app-action-code/p-confirmdialog/div/div/div[2]/span      Are you sure you want to delete?
    Click button   xpath:/html/body/app-root/div/app-action-code/p-confirmdialog/div/div/div[3]/button[1]
    Click button   xpath://body[1]/app-root[1]/div[1]/app-action-code[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Click Element   xpath:/html/body/app-root/div/app-action-code/p-confirmdialog/div/div/div[1]/div/button/span
    Click button   xpath://body[1]/app-root[1]/div[1]/app-action-code[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Click button   xpath:/html/body/app-root/div/app-action-code/p-confirmdialog/div/div/div[3]/button[2]
    Sleep   1
    Close browser