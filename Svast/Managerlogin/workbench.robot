*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    Sanjay@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Sortingarrows
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
SAATcolumn
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/manager/workbench
    Sleep   5
    Click Element  xpath://p-sorticon[@field='assignTo']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAFaccolumn
    Click Element  xpath://p-sorticon[@field='facility']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAUIDcolumn
    Click Element  xpath://th[normalize-space()='UID']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SACNcolumn
    Click Element  xpath://p-sorticon[@field='carrierName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAVNcolumn
    Click Element  xpath://p-sorticon[@field='voucherNumber']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAANcolumn
    Click Element  xpath://p-sorticon[@field='accountNumber']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAPNcolumn
    Click Element  xpath://p-sorticon[@field='patientName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SASDcolumn
    Click Element  xpath://p-sorticon[@field='serviceDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SABDcolumn
    Click Element  xpath://p-sorticon[@field='billedDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAFeecolumn
    Click Element  xpath://*[@id="pr_id_5-table"]/thead/tr[1]/th[12]/p-sorticon/i
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SABalancecolumn
    Click Element  xpath://p-sorticon[@field='balance']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAcommcolumn
    Click Element  xpath://p-sorticon[@field='comments']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
SAStatusName
    Click Element  xpath://p-sorticon[@field='statusName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
Substatus
    Click Element  xpath://p-sorticon[@field='subStatus']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']

    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']

ActionCode
    Click Element  xpath://p-sorticon[@field='actionCode']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']

    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']

AccountType
    Click Element  xpath://p-sorticon[@field='accountType']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']

    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']

FollowUpdate
    Click Element  xpath://p-sorticon[@field='followUpDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']

    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']

WorkedDate
    Click Element  xpath://p-sorticon[@field='workedDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']

    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']

Name
    Click Element  xpath://p-sorticon[@field='name']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']

    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']

ATBDate
    Click Element  xpath://p-sorticon[@field='atbDate']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
AgingDays
    Click Element  xpath://p-sorticon[@field='agingDays']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
AgingBucket
    Click Element  xpath://p-sorticon[@field='agingBucket']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
BilledDays
    Click Element  xpath://p-sorticon[@field='billedDays']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
BilledBucket
    Click Element  xpath://p-sorticon[@field='billedBucket']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
PMS
    Click Element  xpath://p-sorticon[@field='pms']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
UploadedBy
    Click Element  xpath://p-sorticon[@field='uploaded_by']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    Sleep   5
    Close browser
