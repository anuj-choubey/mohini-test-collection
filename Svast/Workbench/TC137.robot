*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
IFANcolumn
    insideIFANcolumn


*** Keywords ***
insideIFANcolumn
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    input text      xpath://input[@name='accountNumber']        14894
    Press keys       //input[@name='accountNumber']     ENTER
    input text      xpath://input[@name='accountNumber']        18681
    Press keys       //input[@name='accountNumber']     ENTER
    input text      xpath://input[@name='accountNumber']        9179
    Press keys       //input[@name='accountNumber']     ENTER
    input text      xpath://input[@name='accountNumber']        12488
    Press keys       //input[@name='accountNumber']     ENTER
    Sleep   2
    Close browser