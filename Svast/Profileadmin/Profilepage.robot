*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Profilepage
    Insideprofilepage
    PPTC

*** Keywords ***
Insideprofilepage
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
PPTC
    go to   http://localhost:4200/#/admin/profile
    Element Text Should Be  //div[@class='p-2']     'Email utkarsh@mistpl.com'

    #Element Text Should Be  //div[@class='p-2']      utkarsh@mistpl.com
    Sleep   2
    Close browser
