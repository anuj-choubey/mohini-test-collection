*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Removebutton
    insideRemovebutton


*** Keywords ***
insideRemovebutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/pms
    Click Element   xpath://tbody/tr[1]/td[6]/button[1]/span[1]
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    click button    xpath://body[1]/app-root[1]/div[1]/app-clients[1]/div[1]/app-mapping[1]/div[1]/div[3]/form[1]/div[1]/div[22]/div[3]/button[1]
    click button    xpath://body[1]/app-root[1]/div[1]/app-clients[1]/div[1]/app-mapping[1]/div[1]/div[3]/form[1]/div[1]/div[21]/div[3]/button[1]
    Sleep   1
    Close browser