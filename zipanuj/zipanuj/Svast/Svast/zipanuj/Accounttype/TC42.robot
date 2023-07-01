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
    go to   http://localhost:4200/#/admin/account-type
    input text      Xpath://input[@placeholder='Search Name']       AR - WEBSITE
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       DENIAL
    clear element text        xpath://input[@placeholder='Search Name']
    input text      Xpath://input[@placeholder='Search Name']       Mohni
    clear element text        xpath://input[@placeholder='Search Name']
    Click Element   xpath:/html/body/app-root
    Sleep   2
    close browser