*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
SubmitbuttonValidation
    insideSubmitbuttonValidation


*** Keywords ***
insideSubmitbuttonValidation
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/action-tracker
    Click button    xpath://button[normalize-space()='Submit']
    Element Text Should Be  xpath://small[normalize-space()='Client is required']       Client is required
    Element Text Should Be  xpath://small[normalize-space()='Open Item is required']        Open Item is required
    Element Text Should Be  xpath://small[normalize-space()='Date Identified is required']      Date Identified is required
    Element Text Should Be  xpath://small[normalize-space()='ETA is required']      ETA is required
    Element Text Should Be  xpath://small[normalize-space()='Imapact is required']      Imapact is required
    Element Text Should Be  xpath://small[normalize-space()='Frequency is required']        Frequency is required
    Element Text Should Be  xpath://small[normalize-space()='Responsibility is required']       Responsibility is required
    Element Text Should Be  xpath://small[normalize-space()='Status is required']       Status is required
    Element Text Should Be  xpath://small[normalize-space()='Description is required']      Description is required
    Element Text Should Be  xpath://small[normalize-space()='Remarks is required']      Remarks is required
    Close browser



