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
    go to   http://localhost:4200/#/admin/action-code
    Click button   xpath://body[1]/app-root[1]/div[1]/app-action-code[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/button[1]
    Clear Element Text  xpath:/html/body/app-root/div/app-action-code/p-dialog/div/div/div[2]/form/div/div[3]/div/input
    input text      Xpath:/html/body/app-root/div/app-action-code/p-dialog/div/div/div[2]/form/div/div[3]/div/input       Mona
    Select From LIst By Value   //select[@formcontrolname='status']     5
    Select From LIst By Value   //select[@class='form-select ng-pristine ng-valid ng-touched']      11
    Click button    xpath://button[normalize-space()='Submit']
    Click button   xpath://body[1]/app-root[1]/div[1]/app-action-code[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/button[1]
    Click button   xpath://button[normalize-space()='Close']
    Click button   xpath://body[1]/app-root[1]/div[1]/app-action-code[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/button[1]
    Click Element   xpath://html/body/app-root/div/app-action-code/p-dialog/div/div/div[1]/div/button/span[1]
    Sleep   2
    Close browser