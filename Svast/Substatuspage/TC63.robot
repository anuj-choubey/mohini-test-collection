*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
pagenumbers
    insidepagenumbers


*** Keywords ***
insidepagenumbers
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/sub-status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='2']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='3']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='4']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='5']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    #Click button    xpath://button[normalize-space()='1']
    #execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   1
    Close browser