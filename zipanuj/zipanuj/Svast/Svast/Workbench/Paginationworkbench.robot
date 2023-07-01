*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
pagination
    Begining
    #Pagenumbers
    #Previousnext
    Fristlast
    paginationdropdown

*** Keywords ***
Begining
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   3
Pagenumbers
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button     xpath://button[normalize-space()='2']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button     xpath://button[normalize-space()='3']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button     xpath://button[normalize-space()='4']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button     xpath://button[normalize-space()='5']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button     xpath://button[normalize-space()='6']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button     xpath://button[normalize-space()='1']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Previousnext
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Element Should Be disabled  xpath://button[@class='p-ripple p-element p-paginator-next p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Element Should Be disabled  xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Fristlast
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-right']
    Element Should Be disabled  xpath://button[@class='p-ripple p-element p-paginator-last p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-left']
    Element Should Be disabled  xpath://button[@class='p-ripple p-element p-paginator-first p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
paginationdropdown
    Click Element   xpath:/html/body/app-root/div/app-work-data/div/div[3]/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='200']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    ${option1}     get element count   xpath://*[@id="pr_id_16-table"]/tbody/tr
    log to console  ${option1}
    Click Element   xpath:/html/body/app-root/div/app-work-data/div/div[3]/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='300']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    ${option2}    get element count   xpath://*[@id="pr_id_16-table"]/tbody/tr
    log to console  ${option2}
    Click Element   xpath:/html/body/app-root/div/app-work-data/div/div[3]/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='400']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    ${option3}    get element count   xpath://*[@id="pr_id_16-table"]/tbody/tr
    log to console  ${option3}
    Click Element   xpath:/html/body/app-root/div/app-work-data/div/div[3]/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[@class='ng-star-inserted'][normalize-space()='500']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    ${option4}    get element count   xpath://*[@id="pr_id_16-table"]/tbody/tr
    log to console  ${option4}
    Sleep   4
    close browser
