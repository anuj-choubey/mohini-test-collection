*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
IFUIDcolumn
    insideIFUIDcolumn


*** Keywords ***
insideIFUIDcolumn
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    input text  xpath://input[@name='uid']     18681133399
    Press keys       xpath://input[@name='uid']   ENTER
    input text  xpath://input[@name='uid']     11290136310
    Press keys       xpath://input[@name='uid']   ENTER
    input text  xpath://input[@name='uid']     95643948
    Press keys       xpath://input[@name='uid']   ENTER
    Close browser