*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Substatus
    InsideSubstatus
    Newbutton
    Searchname
    Editbutton
    Deletebutton
Pagination
    Pagenumbers
    Prevnext
    Firstlast
    Paginationdropdown
Sortingarrows
    Status
    Substatus
    Createdate
    Updatedate

*** Keywords ***
InsideSubstatus
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/sub-status
Newbutton
    Click Element   xpath://span[normalize-space()='New']
    click button    xpath://button[normalize-space()='Close']
    Click Element   xpath://span[normalize-space()='New']
    Click Element   xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[1]/div/button/span
    Click Element   xpath://span[normalize-space()='New']
    Select from list by value   //select[@aria-label='Default select example']      6
    input text      Xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input      cde
    Click button    xpath://button[normalize-space()='Submit']
    Click Element   xpath://span[normalize-space()='New']
    Select from list by value   //select[@aria-label='Default select example']      6
    input text      Xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input      cde
    Click button    xpath://button[normalize-space()='Submit']
    Element Text Should Be  xpath://div[@class='field my-1 text-center text-danger fw-bold ng-star-inserted']       Name is already existing
    click button    xpath://button[normalize-space()='Close']
    Sleep   1
Searchname
    input text      Xpath://input[@placeholder='Search Name']       CALL BACKS
    Clear Element Text  xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       Invalid NDC
    Clear Element Text  xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       xyz
    Clear Element Text  xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       W-9 form
    go to   http://localhost:4200/#/admin
    go back
Editbutton
    Click button   xpath://tbody/tr[1]/td[6]/button[1]
    Clear Element Text  xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input
    input text      Xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[2]/div/input       Radhika
    Select From LIst By Value   xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[2]/form/div/div[1]/div/select     4
    Click button    xpath://button[@type='submit']
    Click button   xpath://tbody/tr[1]/td[6]/button[1]
    Click button   xpath://button[normalize-space()='Close']
    Click button   xpath://tbody/tr[1]/td[6]/button[1]
    Click Element   xpath:/html/body/app-root/div/app-sub-status/p-dialog/div/div/div[1]/div/button/span[1]
Deletebutton
    Click Element   xpath://body[1]/app-root[1]/div[1]/app-sub-status[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/button[2]/span[1]
    Element Text Should Be     xpath:/html/body/app-root/div/app-sub-status/p-confirmdialog/div/div/div[2]/span      Are you sure you want to delete?
    Click button    xpath:/html/body/app-root/div/app-sub-status/p-confirmdialog/div/div/div[3]/button[1]
    Click Element   xpath://body[1]/app-root[1]/div[1]/app-sub-status[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/button[2]/span[1]
    Click Element   xpath:/html/body/app-root/div/app-sub-status/p-confirmdialog/div/div/div[1]/div/button/span
    Click Element   xpath://body[1]/app-root[1]/div[1]/app-sub-status[1]/div[1]/div[1]/p-table[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/button[2]/span[1]
    Click button    xpath:/html/body/app-root/div/app-sub-status/p-confirmdialog/div/div/div[3]/button[2]
Pagenumbers
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
    Click button    xpath://button[normalize-space()='6']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='7']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='8']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button    xpath://button[normalize-space()='9']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Prevnext
    go to   http://localhost:4200/#/admin
    go back
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
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-next p-paginator-element p-link p-disabled']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Firstlast
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-right']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-last p-paginator-element p-link ng-star-inserted p-disabled']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-left']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-first p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Paginationdropdown
    Click Element   xpath:/html/body/app-root/div/app-sub-status/div/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='50']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath:/html/body/app-root/div/app-sub-status/div/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='100']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath:/html/body/app-root/div/app-sub-status/div/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='20']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
Status
    Click Element   xpath://p-sorticon[@field='statusName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
Substatus
    Click Element   xpath://p-sorticon[@field='name']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
Createdate
    Click Element   xpath://p-sorticon[@field='created_date']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
Updatedate
    Click Element   xpath://p-sorticon[@field='updated_date']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   2
    Close browser


