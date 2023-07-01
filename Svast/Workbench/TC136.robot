*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
IFVNcolumn
    insideIFVNcolumn


*** Keywords ***
insideIFVNcolumn
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    input text      xpath://input[@name='voucherNumber']        37975
    Press keys       //input[@name='voucherNumber']     ENTER
    input text      xpath://input[@name='voucherNumber']        38399
    Press keys       //input[@name='voucherNumber']     ENTER
    input text      xpath://input[@name='voucherNumber']        948
    Press keys       //input[@name='voucherNumber']     ENTER
    input text      xpath://input[@name='voucherNumber']        836
    Press keys       //input[@name='voucherNumber']     ENTER
    Sleep   2
    Close browser