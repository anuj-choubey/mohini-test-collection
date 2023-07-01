*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
IFPNcolumn
    insideIFPNcolumn


*** Keywords ***
insideIFPNcolumn
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    input text      xpath://nav[@class='navbar navbar-expand-lg shadow fixed-top']      Shetty, Kishan
    Press keys       //nav[@class='navbar navbar-expand-lg shadow fixed-top']     ENTER
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    input text      xpath://nav[@class='navbar navbar-expand-lg shadow fixed-top']      utkarsh
    Press keys       //nav[@class='navbar navbar-expand-lg shadow fixed-top']     ENTER
    Sleep   2
    Close browser