*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
IFFaccolumn
    insideIFFaccolumn


*** Keywords ***
insideIFFaccolumn
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    Click link  xpath://a[normalize-space()='Workbench']
    Sleep   5
    input text  xpath://input[@name='facility']     DEP_018!A1
    Press keys       xpath://input[@name='facility']   ENTER
    #execute jayascript  window.scrollTo(0,
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    input text  xpath://input[@name='facility']     Dr Will Smith
    Press keys       xpath://input[@name='facility']   ENTER
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep   2
    Close browser