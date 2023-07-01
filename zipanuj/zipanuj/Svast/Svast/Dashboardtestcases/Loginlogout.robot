*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Loginandlogout
    insideLogin
    insidelogout

*** Keywords ***
insideLogin
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed   1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    #press keys  xpath://button[normalize-space()='Login']   ENTER
    #Click Element   xpath://img[@class='me-3']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click link  xpath://a[normalize-space()='Workbench']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click link  xpath://a[normalize-space()='Upload']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/ar-report
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/production-report
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/buckets
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click link  xpath://a[normalize-space()='Action Tracker']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/pms
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/clients
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/sub-status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/action-code
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/account-type
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/profile
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    go to   http://localhost:4200/#/admin/map-manager
    click link  xpath://a[normalize-space()='Dashboard']
insidelogout
    Click button    xpath://button[normalize-space()='Logout']
    Sleep   2
    Close browser