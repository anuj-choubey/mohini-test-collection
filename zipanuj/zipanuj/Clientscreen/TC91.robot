*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Newbutton
    insideNewbutton


*** Keywords ***
insideNewbutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/clients
    Click button   xpath://button[@class='p-element p-button-success mr-2 p-button p-component']
    click button    xpath://button[normalize-space()='Close']
    Click button   xpath://button[@class='p-element p-button-success mr-2 p-button p-component']
    Click Element   xpath:/html/body/app-root/div/app-clients/p-dialog/div/div/div[1]/div/button/span[1]
    Click button   xpath://button[@class='p-element p-button-success mr-2 p-button p-component']
    input text      Xpath:/html/body/app-root/div/app-clients/p-dialog/div/div/div[2]/form/div/div[1]/div/input      abca
    input text      Xpath://input[@formcontrolname='client_code']       DWS4123
    input text      Xpath://input[@formcontrolname='specialty']     Dentist
    input text      Xpath:/html/body/app-root/div/app-clients/p-dialog/div/div/div[2]/form/div/div[4]/div/input        1234
    Select from list by value   //select[@formcontrolname='state']        2
    Select from list by value   //select[@formcontrolname='pms_id']      9
    #Click Element   xpath://label[normalize-space()='Choose Logo']
    Click button   xpath://button[normalize-space()='Submit']
    Element Text Should Be  xpath://div[@class='field my-1 text-center text-danger fw-bold ng-star-inserted']   Select a logo.
    Sleep   2
    close browser

