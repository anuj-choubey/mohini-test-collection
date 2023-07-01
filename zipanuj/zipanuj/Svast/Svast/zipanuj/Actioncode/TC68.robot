*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Searchfield
    insideSearchfield


*** Keywords ***
insideSearchfield
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/action-code
    Input text  xpath://input[@placeholder='Search Name']       CLAIM IN PROCESS
    Clear Element Text  xpath://input[@placeholder='Search Name']
    Input text  xpath://input[@placeholder='Search Name']       RESUBMITTED
    Clear Element Text  xpath://input[@placeholder='Search Name']
    Input text  xpath://input[@placeholder='Search Name']       PROVIDER ISSUE
    Clear Element Text  xpath://input[@placeholder='Search Name']
    Input text  xpath://input[@placeholder='Search Name']       CLAIM DENIED AS INCLUSIVE/GLOBAL/BUNDLED
    Clear Element Text  xpath://input[@placeholder='Search Name']
    Input text  xpath://input[@placeholder='Search Name']       NON-COVERED CHARGE(S)
    Sleep   1
    close browser
