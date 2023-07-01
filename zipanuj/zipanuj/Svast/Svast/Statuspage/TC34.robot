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
    go to   http://localhost:4200/#/admin/status
    #Click link   xpath://a[normalize-space()='']
    #click link  xpath://a[normalize-space()='']
    #Click Element   xpath://span[normalize-space()='New']
    #click button    xpath://button[normalize-space()='Close']
    #Click Element   xpath://span[normalize-space()='New']
    input text      Xpath://input[@placeholder='Search Name']   ADDITIONAL INFO_PATIENT
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']   CLIA
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']   Mohni
    clear element text        xpath://input[@placeholder='Search Name']
    Sleep   2
    #click button    xpath://button[normalize-space()='Submit']
    close browser