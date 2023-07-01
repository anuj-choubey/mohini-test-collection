*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}      http://localhost:4200
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209


*** Test Cases ***
Editbutton
    insideEditbutton


*** Keywords ***
insideEditbutton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']     ${p/w}
    click button    xpath://button[normalize-space()='Login']
    click button    xpath://tbody/tr[1]/td[7]/button[1]
    clear element text        xpath:/html/body/app-root/div/app-users/div/div/div/form/div[1]/input
    #input text      Xpath:/html/body/app-root/div/app-users/div/div/div/form/div[1]/input        Mohni
    clear element text        xpath://input[@formcontrolname='mobile']
    #input text      Xpath://input[@formcontrolname='mobile']        123456
    clear element text        xpath://input[@formcontrolname='email']
    #input text      Xpath://input[@formcontrolname='email']     rishikj@svasthealthtech.com
    #Select from list by value   //select[@aria-label='Default select example']      1
    #select from list by value       Xpath://select[@aria-label='Default select example']        1
    click button    xpath://button[normalize-space()='Submit']
    #click link      xpath://a[normalize-space()='Dashboard']
    Element text should be      xpath://small[normalize-space()='Name is required']     Name is required
    Element text should be      xpath://small[normalize-space()='Email is required']        Email is required
    #Element text should be      xpath://small[normalize-space()='Role is required']     Role is required
    input text      Xpath:/html/body/app-root/div/app-users/div/div/div/form/div[1]/input        Rishi
    input text      Xpath://input[@formcontrolname='mobile']        123456
    input text      Xpath://input[@formcontrolname='email']     rishikj@svasthealthtech.com
    Select from list by value   //select[@aria-label='Default select example']      1
    Close browser