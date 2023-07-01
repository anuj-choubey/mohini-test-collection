*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
SAworkbench
    InsideSA
    SAATcolumn
    SAUIDcolumn
    SAFaccolumn
    SACNcolumn
    SAVNcolumn
    SAANcolumn
    SAPNcolumn
    SASDcolumn
    SABDcolumn
    #SAFeecolumn
    SABalancecolumn
    SAcommcolumn
    SAStatusName
    Substatus
    ActionCode
    AccountType
    FollowUpdate
    WorkedDate
    Name
    ATBDate
    AgingDays
    AgingBucket
    BilledDays
    BilledBucket
    PMS
    UploadedBy

*** Keywords ***
InsideSA
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
SAATcolumn
    Click Element  xpath://p-sorticon[@field='assignTo']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAFaccolumn
    Click Element  xpath://p-sorticon[@field='facility']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAUIDcolumn
    Click Element  xpath://p-sorticon[@field='uid']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SACNcolumn
    Click Element  xpath://p-sorticon[@field='carrierName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAVNcolumn
    Click Element  xpath://p-sorticon[@field='voucherNumber']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAANcolumn
    Click Element  xpath://p-sorticon[@field='accountNumber']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAPNcolumn
    Click Element  xpath://p-sorticon[@field='patientName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SASDcolumn
    Click Element  xpath://p-sorticon[@field='serviceDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SABDcolumn
    Click Element  xpath://p-sorticon[@field='billedDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAFeecolumn
    Click Element  xpath://*[@id="pr_id_5-table"]/thead/tr[1]/th[12]/p-sorticon/i
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SABalancecolumn
    Click Element  xpath://p-sorticon[@field='balance']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAcommcolumn
    Click Element  xpath://p-sorticon[@field='comments']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
SAStatusName
    Click Element  xpath://p-sorticon[@field='statusName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
Substatus
    Click Element  xpath://p-sorticon[@field='subStatus']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
ActionCode
    Click Element  xpath://p-sorticon[@field='actionCode']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
AccountType
    Click Element  xpath://p-sorticon[@field='accountType']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
FollowUpdate
    Click Element  xpath://p-sorticon[@field='followUpDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
WorkedDate
    Click Element  xpath://p-sorticon[@field='workedDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
Name
    Click Element  xpath://p-sorticon[@field='name']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
ATBDate
    Click Element  xpath://p-sorticon[@field='atbDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
AgingDays
    Click Element  xpath://p-sorticon[@field='agingDays']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
AgingBucket
    Click Element  xpath://p-sorticon[@field='agingBucket']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
BilledDays
    Click Element  xpath://p-sorticon[@field='billedDays']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
BilledBucket
    Click Element  xpath://p-sorticon[@field='billedBucket']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
PMS
    Click Element  xpath://p-sorticon[@field='pms']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
UploadedBy
    Click Element  xpath://p-sorticon[@field='uploaded_by']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   5
    Close browser

