*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Responsibility
    insideResponsibility


*** Keywords ***
insideResponsibility
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/action-tracker
    Select from list by value   //select[@aria-label='Default select example']     73
    input text  xpath:/html/body/app-root/div/app-action-tracker/div/app-action-form/div/div/form/div[1]/div[2]/input      xyz
    input text  xpath://input[@id='impact']     125
    Select from list by value   //select[@aria-label='Frequency']       3
    Select from list by value   //select[@aria-label='Responsibility']       30
    Select from list by value   //select[@aria-label='Status']       2
    input text   xpath://textarea[@id='description']     MNO
    input text   //textarea[@id='remarks']     ABC
    Click Element   xpath://select[@aria-label='Responsibility']
    Click Element   xpath://div[@class='row justify-content-center']
    Select from list by value   //select[@aria-label='Responsibility']       30
    Click button    xpath://button[normalize-space()='Submit']
    Sleep   2
    Close browser
