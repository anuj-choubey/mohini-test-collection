*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
prevnext
    insideprevnext


*** Keywords ***
insideprevnext
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/action-code
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Element Should Be Disabled  xpath:/html/body/app-root/div/app-action-code/div/div[2]/p-paginator/div/button[3]
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Element Should Be Disabled  xpath:/html/body/app-root/div/app-action-code/div/div[2]/p-paginator/div/button[2]
    Sleep   2
    close browser