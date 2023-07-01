*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
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
    set selenium speed  2 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    #go to   http://localhost:4200/#/admin/status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Element Should Be Disabled   xpath://button[@class='p-ripple p-element p-paginator-next p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    #Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    #execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Element Should Be Disabled   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    #Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    #execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)
    close browser