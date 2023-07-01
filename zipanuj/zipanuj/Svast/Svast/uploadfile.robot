*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209
${filepath}     C:\Users\mohni\OneDrive\Desktop\PMS zip\New\15042023 Svast testing\AMD -10000.xlsx

*** Test Cases ***
uploadfile
    insideuploadfile


*** Keywords ***
insideuploadfile
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/upload/file
    input text  xpath://input[@type='file']
    #select from list by index   Xpath://span[@class='ng-tns-c68-1 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']     1
    #select from list by index   Xpath://span[@class='ng-tns-c68-2 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']     1
    sleep 2
    close browser
