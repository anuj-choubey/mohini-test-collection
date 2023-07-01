*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
DashboardAutomation
    InsodeDB
    #Cards
    Editbutton
    SvastImage
    Deletebutton
    Pagination

*** Keywords ***
InsodeDB
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed   1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
Editbutton
    Click button   xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[1]
    Clear Element Text  xpath://input[@formcontrolname='name']
    Input text  xpath://input[@formcontrolname='name']        Mohni
    Input text  xpath://input[@formcontrolname='mobile']    102620
    Clear Element Text  xpath://input[@class='form-control ng-untouched ng-pristine ng-valid']
    Input text  xpath://input[@formcontrolname='email']      mohini@mistpl.com
    Select from list by value   //select[@aria-label='Default select example']      2
    Click button    xpath://button[normalize-space()='Submit']
    Click link  xpath://a[normalize-space()='Dashboard']
    Click button   xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[1]
    Clear Element Text  xpath:/html/body/app-root/div/app-users/div/div/div/form/div[1]/input
    Input text  xpath://input[@formcontrolname='name']        Aman Gupta
    Clear Element Text  xpath://input[@formcontrolname='mobile']
    Clear Element Text  xpath://input[@class='form-control ng-untouched ng-pristine ng-valid']
    Input text  xpath://input[@formcontrolname='email']      amangupta1542@gmail.com
    Select from list by value   //select[@aria-label='Default select example']      1
    Click button    xpath://button[normalize-space()='Submit']
SvastImage
    Click Element   xpath://img[@class='me-3']
Deletebutton
    Click button    xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Element Text Should Be  xpath:/html/body/app-root/div/app-dashboard/p-confirmdialog/div/div/div[2]/span      Are you sure you want to delete?
    #Click Element   //span[@class='pi pi-times ng-tns-c112-22']
    #Click button    xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Click button    xpath:/html/body/app-root/div/app-dashboard/p-confirmdialog/div/div/div[3]/button[1]
    Click button    xpath://body[1]/app-root[1]/div[1]/app-dashboard[1]/div[1]/div[3]/div[1]/div[1]/p-table[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[7]/button[2]
    Click button    xpath:/html/body/app-root/div/app-dashboard/p-confirmdialog/div/div/div[3]/button[2]
Pagination
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click button   xpath:/html/body/app-root/div/app-dashboard/div/div[3]/div[2]/p-paginator/div/span/button[2]
    Click button   xpath:/html/body/app-root/div/app-dashboard/div/div[3]/div[2]/p-paginator/div/span/button[1]
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-right']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-next p-paginator-element p-link p-disabled']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-left']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-prev p-paginator-element p-link p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-right']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-last p-paginator-element p-link ng-star-inserted p-disabled']
    Click Element   xpath://span[@class='p-paginator-icon pi pi-angle-double-left']
    Element Should Be Disabled  xpath://button[@class='p-ripple p-element p-paginator-first p-paginator-element p-link ng-star-inserted p-disabled']
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   2
    Close browser