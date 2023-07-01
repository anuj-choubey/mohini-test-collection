*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Prevnext
    insidePrevnext


*** Keywords ***
insidePrevnext
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/account-type
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element    xpath:/html/body/app-root/div/app-account-type/div/div[2]/p-paginator/div/button[3]/span
    Element Should Be Disabled  xpath:/html/body/app-root/div/app-account-type/div/div[2]/p-paginator/div/button[3]
    Click Element    xpath:/html/body/app-root/div/app-account-type/div/div[2]/p-paginator/div/button[2]/span
    Element Should Be Disabled  xpath:/html/body/app-root/div/app-account-type/div/div[2]/p-paginator/div/button[2]
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   2
    close browser