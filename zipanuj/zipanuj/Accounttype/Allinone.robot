*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
AccountType
    InsideaccountType
    #Newbutton
    #SearchName
    #Editbutton
    #Deletebutton
Pagination
    #Pagenumber
    #Prevnext
    #Firstlast
    #Paginationdropdown
    #Firstpageshouldopen
Sortingarrows
    StatusName
    SACRD
    SAUpD

*** Keywords ***
InsideaccountType
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/account-type
Newbutton
    Click Element   xpath://span[normalize-space()='New']
    click button    xpath://button[normalize-space()='Close']
    Click Element   xpath://span[normalize-space()='New']
    click Element    xpath:/html/body/app-root/div/app-account-type/p-dialog/div/div/div[1]/div/button/span
    Click Element   xpath://span[normalize-space()='New']
    input text      Xpath://input[@class='form-control ng-untouched ng-pristine ng-invalid']      xyza
    click button    xpath://button[normalize-space()='Submit']
    Sleep   2
    Click Element   xpath://span[normalize-space()='New']
    input text      Xpath://input[@class='form-control ng-untouched ng-pristine ng-invalid']     xyza
    click button    xpath://button[normalize-space()='Submit']
    Element Text Should Be  xpath://div[@class='field my-1 text-center text-danger fw-bold ng-star-inserted']       Name is already existing
    click button    xpath://button[normalize-space()='Close']
SearchName
    input text      Xpath://input[@placeholder='Search Name']   AR - COMPLEX ACCTs
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']   DENIAL
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']   ERA
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']   xkudwi
    clear element text        xpath://input[@placeholder='Search Name']
Editbutton
    go to   http://localhost:4200/#/admin
    go back
    click Element    xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    clear element text        xpath://input[@class='form-control ng-untouched ng-pristine ng-valid']
    input text      Xpath://input[@class='form-control ng-pristine ng-valid ng-touched']  mno
    click button    xpath://button[@type='submit']
    click Element    xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    click button    xpath://button[normalize-space()='Close']
    click Element    xpath://tbody/tr[1]/td[5]/button[1]/span[1]
    click Element    xpath:/html/body/app-root/div/app-account-type/p-dialog/div/div/div[1]/div/button/span
Deletebutton
    Click Element   xpath://tbody/tr[1]/td[5]/button[2]/span[1]
    #Element text should be      Xpath://div[@class='p-dialog-content ng-tns-c112-4']       Are you sure you want to delete?
    Click Element   xpath://span[normalize-space()='No']
    #Click Element   xpath://tbody/tr[1]/td[5]/button[2]/span[1]
    #Element text should be      Xpath://div[@class='p-dialog-content ng-tns-c112-4']       Are you sure you want to delete?
    #Click Element   xpath://span[@class='pi pi-times ng-tns-c112-4']
    Click Element   xpath://tbody/tr[1]/td[5]/button[2]/span[1]
    #Element text should be      Xpath://div[@class='p-dialog-content ng-tns-c112-4']       Are you sure you want to delete?
    Click button    xpath://button[@class='p-ripple p-element ng-tns-c112-4 p-confirm-dialog-accept p-button p-component ng-star-inserted']
Pagenumber
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    click button    xpath://button[normalize-space()='2']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    click button    xpath://button[normalize-space()='3']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    click button    xpath://button[normalize-space()='4']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    click button    xpath://button[normalize-space()='1']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Prevnext
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Element Should Be Disabled   xpath://button[@class='p-ripple p-element p-paginator-next p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Element Should Be Disabled   xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Firstlast
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-right']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-last p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-left']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-first p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Paginationdropdown
    Click Element   xpath:/html/body/app-root/div/app-status/div/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='50']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath:/html/body/app-root/div/app-status/div/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[normalize-space()='100']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath:/html/body/app-root/div/app-status/div/div[2]/p-paginator/div/p-dropdown/div/div[2]/span
    Click Element   xpath://span[@class='ng-star-inserted'][normalize-space()='20']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
Firstpageshouldopen
    click button    xpath://button[normalize-space()='2']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click link  xpath://a[normalize-space()='Dashboard']
    go to   http://localhost:4200/#/admin/status
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Element should be Disabled  xpath://button[@class='p-ripple p-element p-paginator-first p-paginator-element p-link p-disabled ng-star-inserted']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
StatusName
    Click Element   xpath://p-sorticon[@field='name']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SACRD
    Click Element   xpath://p-sorticon[@field='created_date']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAUpD
    Click Element   xpath://p-sorticon[@field='updated_date']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://p-sorticon[@field='updated_date']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   2
    Close browser
