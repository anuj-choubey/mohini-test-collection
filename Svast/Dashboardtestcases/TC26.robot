*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Pagiantiondropdown
    insidePaginationdropdown


*** Keywords ***
insidePaginationdropdown
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  2 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    #click button    xpath://button[normalize-space()='2']
    #click button    xpath://button[normalize-space()='1']

    #Double Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    #Double Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']

    #Double Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-right']
    #Double Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-left']
    #Double Click Element   xpath://app-dashboard[@class='ng-star-inserted']
    Click Element   xpath://div[@role='button']
    Click Element   xpath://span[normalize-space()='20']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://div[@role='button']
    Click Element   xpath://span[normalize-space()='50']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://div[@role='button']
    Click Element   xpath://span[normalize-space()='100']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    close browser
