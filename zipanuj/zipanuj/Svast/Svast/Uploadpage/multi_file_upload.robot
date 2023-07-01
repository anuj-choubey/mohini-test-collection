*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${DELAY}          0.5
${PMS_FILE1}       C:\Users\mohni\OneDrive\Desktop\PMS zip\New\15042023 Svast testing\AMD -10000.xlsx
${PMS_FILE2}        C:\Users\mohni\OneDrive\Desktop\PMS zip\New\15042023 Svast testing\Athena 20000.xlsx
${email}        utkarsh@mistpl.com
${password}     Svast@1209
${url}  http://localhost:4200/

*** Test Cases ***
Upload Multiple Files
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${password}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/upload/file
    Choose File    xpath://input[@type='file']    ${PMS_FILE1}
    Click Element    xpath://span[@class='ng-tns-c68-3 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']
    Click Element    xpath://span[normalize-space()='AMD']
    Click Element    xpath://span[@class='ng-tns-c68-4 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']
    Click Element    xpath://li[@aria-label='Office Key: 119606 - SOUTHWEST CARDIOVASCULAR CTR INC']
    Click Button    xpath://button[@class='p-ripple p-element p-button-sm p-button p-component']
    [Wait]    ${DELAY}
    Open New Tab
    Switch To Window    ${EMPTY}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${password}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/upload/file
    Choose File    xpath://input[@type='file']    ${PMS_FILE2}
    Click Element    xpath://span[@class='ng-tns-c68-3 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']
    Click Element    xpath://span[normalize-space()='Athena']
    Click Element    xpath://span[@class='ng-tns-c68-4 p-dropdown-label p-inputtext p-placeholder ng-star-inserted']
    Click Element    xpath://span[normalize-space()='BIMP_026!A1']
    Click Button    xpath://button[@class='p-ripple p-element p-button-sm p-button p-component']
    [Wait]    ${DELAY}
    Close Tab
    [Teardown]    Close Browser
