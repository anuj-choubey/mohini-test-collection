*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
inputfield&dropdowns
    #insideAssigntodropdown
    IFUID
    IFFacility
    IFCarriername
    IFVoucherno
    IFaccountno
    IFpatientname
    #IFservicedate
    IFFee
    IFBalance
    IFcomments
    IFStatusname
    IFSubstatus
    IFActionCode
    IFAccountType
    IFAgingdays
    IFbilleddays

*** Keywords ***
insideAssigntodropdown
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    Click Element   xpath://span[@class='p-multiselect-trigger-icon ng-tns-c105-47 pi pi-chevron-down']
    Click Element   xpath://span[normalize-space()='naveen']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Click Element   xpath://span[@class='p-multiselect-trigger-icon ng-tns-c105-47 pi pi-chevron-down']
    Click Element   xpath://span[normalize-space()='Ashish']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight
    Sleep   2
    Close Browser
IFUID
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    input text  xpath://input[@name='uid']     1102425963
    Press keys       xpath://input[@name='uid']   ENTER
    input text  xpath://input[@name='uid']     55160467020
    Press keys       xpath://input[@name='uid']   ENTER
    input text  xpath://input[@name='uid']     1248826496
    Press keys       xpath://input[@name='uid']   ENTER
    Clear Element Text  xpath://input[@name='uid']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
IFFacility
    input text  xpath://input[@name='facility']     DEP_018!A1
    Press keys       xpath://input[@name='facility']   ENTER
    Sleep   2
    input text  xpath://input[@name='facility']     Dr Will Smith
    Press keys       xpath://input[@name='facility']   ENTER
    Clear Element Text  xpath://input[@name='facility']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFCarriername
    input text  xpath://input[@name='carrierName']      CIGNA
    Press keys       //input[@name='carrierName']   ENTER
    input text  xpath://input[@name='carrierName']      AARP UNITED HEALTHCARE
    Press keys       xpath://input[@name='carrierName']   ENTER
    input text  xpath://input[@name='carrierName']      HOP Admin Unit
    Press keys       xpath://input[@name='carrierName']   ENTER
    Clear Element Text  xpath://input[@name='carrierName']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFVoucherno
    input text  xpath://input[@name='voucherNumber']        948
    Press keys       //input[@name='voucherNumber']   ENTER
    input text  xpath://input[@name='voucherNumber']        26743
    Press keys       //input[@name='voucherNumber']   ENTER
    input text  xpath://input[@name='voucherNumber']        25925
    Press keys       //input[@name='voucherNumber']   ENTER
    Clear element text  xpath://input[@name='voucherNumber']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFaccountno
    input text  xpath://input[@name='accountNumber']    11024
    Press keys       //input[@name='accountNumber']   ENTER
    input text  xpath://input[@name='accountNumber']    17251
    Press keys       //input[@name='accountNumber']   ENTER
    input text  xpath://input[@name='accountNumber']    18696
    Press keys       //input[@name='accountNumber']   ENTER
    Clear Element Text  xpath://input[@name='accountNumber']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFpatientname
    input text  xpath://input[@name='patientName']      Shetty, Kishan
    Press keys       //input[@name='patientName']   ENTER
    input text  xpath://input[@name='patientName']      Kishan, Shetty
    Press keys       //input[@name='patientName']   ENTER
    input text  xpath://input[@name='patientName']      Utkarsh, Shetty
    Press keys       //input[@name='patientName']   ENTER
    input text  xpath://input[@name='patientName']      Ashish, Shetty
    Press keys       //input[@name='patientName']   ENTER
    Clear Element Text  xpath://input[@name='patientName']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFservicedate
    Click Element  xpath://*[@id="pr_id_2-table"]/thead/tr[2]/th[10]/p-calendar/span/input
    #input text  xpath://*[@id="pr_id_2-table"]/thead/tr[2]/th[10]/p-calendar/span/input   12/08/2021
    Sleep   2
    Close browser
IFFee
    input text  xpath://input[@name='fees']     174
    Press keys       //input[@name='fees']   ENTER
    input text  xpath://input[@name='fees']     338
    Press keys       //input[@name='fees']   ENTER
    input text  xpath://input[@name='fees']     529
    Press keys       //input[@name='fees']   ENTER
    input text  xpath://input[@name='fees']     254
    Press keys       //input[@name='fees']   ENTER
    Clear Element Text  xpath://input[@name='fees']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFBalance
    input text  xpath://input[@name='balance']      338
    Press keys       //input[@name='balance']   ENTER
    input text  xpath://input[@name='balance']      233
    Press keys       //input[@name='balance']   ENTER
    input text  xpath://input[@name='balance']      27.71
    Press keys       //input[@name='balance']   ENTER
    input text  xpath://input[@name='balance']      35.15
    Press keys       //input[@name='balance']   ENTER
    Clear Element Text  xpath://input[@name='balance']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFComments
    input text  xpath://input[@name='comments']     ok
    Press keys       //input[@name='comments']   ENTER
    input text  xpath://input[@name='comments']     right
    Press keys       //input[@name='comments']   ENTER
    input text  xpath://input[@name='comments']     Testing 12345
    Press keys       //input[@name='comments']   ENTER
    input text  xpath://input[@name='comments']     sdljf
    Press keys       //input[@name='comments']   ENTER
    Clear Element Text  xpath://input[@name='comments']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFStatusname
    input text  xpath://input[@name='statusName']       CLAIM NOT ON FILE
    Press keys       //input[@name='statusName']   ENTER
    input text  xpath://input[@name='statusName']       CLAIM PAID
    Press keys       //input[@name='statusName']   ENTER
    input text  xpath://input[@name='statusName']       AUTH/REFERRAL
    Press keys       //input[@name='statusName']   ENTER
    input text  xpath://input[@name='statusName']       CLAIM PAID TO PATIENT
    Press keys       //input[@name='statusName']   ENTER
    Clear Element Text  xpath://input[@name='statusName']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFSubstatus
    input text  xpath://input[@name='subStatus']        ACTIVE POLICY FOUND
    Press keys       //input[@name='subStatus']   ENTER
    input text  xpath://input[@name='subStatus']        PAID TO PATIENT
    Press keys       //input[@name='subStatus']   ENTER
    input text  xpath://input[@name='subStatus']        THE TIME LIMIT FOR FILING HAS EXPIRED
    Press keys       //input[@name='subStatus']   ENTER
    input text  xpath://input[@name='subStatus']        PAID TO PATIENT
    Press keys       //input[@name='subStatus']   ENTER
    Clear Element Text  xpath://input[@name='subStatus']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFActionCode
    input text  xpath://input[@name='actionCode']       NEED ASSISTANCE
    Press keys       //input[@name='actionCode']   ENTER
    input text  xpath://input[@name='actionCode']       BILLED PATIENT
    Press keys       //input[@name='actionCode']   ENTER
    input text  xpath://input[@name='actionCode']       NEED TO FOLLOW UP
    Press keys       //input[@name='actionCode']   ENTER
    input text  xpath://input[@name='actionCode']       VOICE MAIL LEFT
    Press keys       //input[@name='actionCode']   ENTER
    Clear Element Text  xpath://input[@name='actionCode']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFAccountType
    input text  xpath://input[@name='accountType']      AR - APPEALs
    Press keys       //input[@name='accountType']   ENTER
    input text  xpath://input[@name='accountType']      EOB DOWNLOAd
    Press keys       //input[@name='accountType']   ENTER
    input text  xpath://input[@name='accountType']      AR - SELF RESOLVE
    Press keys       //input[@name='accountType']   ENTER
    input text  xpath://input[@name='accountType']      AR - WEBSITE
    Press keys       //input[@name='accountType']   ENTER
    Clear Element Text  xpath://input[@name='accountType']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFAgingdays
    input text  xpath://input[@name='agingDays']    524
    Press keys       //input[@name='agingDays']   ENTER
    input text  xpath://input[@name='agingDays']    521
    Press keys       //input[@name='agingDays']   ENTER
    input text  xpath://input[@name='agingDays']    665
    Press keys       //input[@name='agingDays']   ENTER
    input text  xpath://input[@name='agingDays']    2428
    Press keys       //input[@name='agingDays']   ENTER
    Clear Element Text  xpath://input[@name='agingDays']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
IFbilleddays
    input text  xpath://input[@name='billedDays']   491
    Press keys       //input[@name='billedDays']   ENTER
    input text  xpath://input[@name='billedDays']   131
    Press keys       //input[@name='billedDays']   ENTER
    input text  xpath://input[@name='billedDays']   105
    Press keys       //input[@name='billedDays']   ENTER
    input text  xpath://input[@name='billedDays']   19366
    Press keys       //input[@name='billedDays']   ENTER
    Clear Element Text  xpath://input[@name='billedDays']
    Click button    xpath://button[@class='p-element p-button-outlined p-button-help ms-1 p-button p-component']
    Sleep   2
    Close browser
