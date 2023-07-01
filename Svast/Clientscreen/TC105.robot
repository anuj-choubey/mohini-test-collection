*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
pagedropdown
    insidepagedropdown


*** Keywords ***
insidepagedropdown
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/clients
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath:/html/body/app-root/div/app-clients/div/div[3]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='50']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath:/html/body/app-root/div/app-clients/div/div[3]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='100']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    Close browser
