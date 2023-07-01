*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    naveen@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Agent_workbench
    Login
    Sortby
    Global_search
    Filter_btn
    Clearfilter_btn
    freeze_filter
    Unfreeze_filter
    SAUID
    IF_UID
    SA_Fac
    IF_Fac
    SA_CN
    IF_CN
    SA_PN
    IF_PN
    SA_VN
    IF_VN
    SA_AN
    IF_AN


*** Keywords ***
Login
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/agent/workbench
Sortby
    go to   http://localhost:4200/#/agent/workbench
    click Element   Xpath:/html/body/app-root/div/app-work-data/div/div[1]/p-table/div/div[1]/div/div/p-dropdown/div/div[2]/span
    click Element   Xpath://span[normalize-space()='By Service Date ASC']
    sleep   2 seconds
    click Element   Xpath:/html/body/app-root/div/app-work-data/div/div[1]/p-table/div/div[1]/div/div/p-dropdown/div/div[2]/span
    click Element   Xpath://span[normalize-space()='By Service Date DESC']
    Sleep   2 seconds
    click Element   Xpath:/html/body/app-root/div/app-work-data/div/div[1]/p-table/div/div[1]/div/div/p-dropdown/div/div[2]/span
    click Element   Xpath://span[normalize-space()='By Billed Date ASC']
    Sleep   2 seconds
    click Element   Xpath:/html/body/app-root/div/app-work-data/div/div[1]/p-table/div/div[1]/div/div/p-dropdown/div/div[2]/span
    click Element   Xpath://span[normalize-space()='By Billed Date DESC']
    Sleep   2 seconds
    click Element   Xpath:/html/body/app-root/div/app-work-data/div/div[1]/p-table/div/div[1]/div/div/p-dropdown/div/div[2]/span
    click Element   Xpath://span[@class='ng-star-inserted'][normalize-space()='By Balance ASC']
    Sleep   2 seconds
    click Element   Xpath:/html/body/app-root/div/app-work-data/div/div[1]/p-table/div/div[1]/div/div/p-dropdown/div/div[2]/span
    click Element   Xpath://span[@class='ng-star-inserted'][normalize-space()='By Balance DESC']
    Sleep   2 seconds
Global_search
    input text      Xpath://input[@placeholder='Global Search']     xyz
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
    input text      Xpath://input[@placeholder='Global Search']     Kishan, Shetty
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
    input text      Xpath://input[@placeholder='Global Search']     	BCBS of Illinois
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
    input text      Xpath://input[@placeholder='Global Search']     		455640
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
    input text      Xpath://input[@placeholder='Global Search']             54670
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
    input text      Xpath://input[@placeholder='Global Search']           	04/25/2021
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
    input text      Xpath://input[@placeholder='Global Search']             07/05/2021
    Press Keys  Xpath://input[@placeholder='Global Search']       ENTER
Filter_btn
    input text      Xpath://input[@placeholder='Global Search']     xyz
    Click button    xpath://button[@type='submit']
    input text      Xpath://input[@placeholder='Global Search']     Kishan, Shetty
    Click button    xpath://button[@type='submit']
    input text      Xpath://input[@placeholder='Global Search']     	BCBS of Illinois
    Click button    xpath://button[@type='submit']
    input text      Xpath://input[@placeholder='Global Search']     		455640
    Click button    xpath://button[@type='submit']
    input text      Xpath://input[@placeholder='Global Search']             54670
    Click button    xpath://button[@type='submit']
    input text      Xpath://input[@placeholder='Global Search']           	04/25/2021
    Click button    xpath://button[@type='submit']
    input text      Xpath://input[@placeholder='Global Search']             07/05/2021
    Click button    xpath://button[@type='submit']
Clearfilter_btn
    input text      Xpath://input[@placeholder='Global Search']     xyz
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
    input text      Xpath://input[@placeholder='Global Search']     Kishan, Shetty
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
    input text      Xpath://input[@placeholder='Global Search']     	BCBS of Illinois
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
    input text      Xpath://input[@placeholder='Global Search']     		455640
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
    input text      Xpath://input[@placeholder='Global Search']             54670
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
    input text      Xpath://input[@placeholder='Global Search']           	04/25/2021
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
    input text      Xpath://input[@placeholder='Global Search']             07/05/2021
    Click button    xpath://button[@type='submit']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   1 second
freeze_filter
    input text      Xpath://input[@placeholder='Global Search']             07/05/2021
    Click button    xpath://button[@type='submit']
    Click button    Xpath://button[@ng-reflect-label='Freeze Filter']
    go to   http://localhost:4200/#/agent
    go to   http://localhost:4200/#/agent/workbench
Unfreeze_filter
    Click button    Xpath://*[@id="pr_id_61"]/div[1]/div/button[2]
    go to   http://localhost:4200/#/agent
    go to   http://localhost:4200/#/agent/workbench
SAUID
    Click Element   Xpath://p-sorticon[@field='uid']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
IF_UID
    Input text  Xpath://input[@name='uid']      	54670455640
    Press Keys  Xpath://input[@name='uid']       ENTER
    Click Button    Xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
SA_Fac
    Click Element   Xpath://p-sorticon[@field='facility']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
IF_Fac
    Input text  Xpath://input[@name='facility']      	WNC
    Press Keys  Xpath://input[@name='facility']       ENTER
    Click Button    Xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
SA_CN
    Click Element   Xpath://p-sorticon[@field='carrierName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
IF_CN
    Input text  Xpath://input[@name='carrierName']      		BCBS of Illinois
    Press Keys  Xpath://input[@name='carrierName']       ENTER
    Click Button    Xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
SA_VN
    Click Element   Xpath://p-sorticon[@field='voucherNumber']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
IF_VN
    Input text  Xpath://input[@name='voucherNumber']      			455640
    Press Keys  Xpath://input[@name='voucherNumber']       ENTER
    Click Button    Xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
SA_AN
    Click Element   Xpath://p-sorticon[@field='accountNumber']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
IF_AN
    Input text  Xpath://input[@name='accountNumber']      				54670
    Press Keys  Xpath://input[@name='accountNumber']       ENTER
    Click Button    Xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
SA_PN
    Click Element   Xpath://p-sorticon[@field='patientName']//i[@class='p-sortable-column-icon pi pi-fw pi-sort-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://i[@class='p-sortable-column-icon pi pi-fw pi-sort-amount-up-alt']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
IF_PN
    Input text  Xpath://input[@name='patientName']  			455640
    Press Keys  Xpath://input[@name='patientName']       ENTER
    Click Button    Xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']

