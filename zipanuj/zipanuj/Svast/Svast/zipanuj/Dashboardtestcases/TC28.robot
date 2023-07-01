*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Doublearrows
    insideDoublearrows


*** Keywords ***
insideDoublearrows
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

    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-right']
    Element Should Be Disabled   xpath://button[@class='p-ripple p-element p-paginator-last p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-left']
    Element Should Be Disabled   xpath:/html/body/app-root/div/app-dashboard/div/div[3]/div[2]/p-paginator/div/button[1]
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    close browser
