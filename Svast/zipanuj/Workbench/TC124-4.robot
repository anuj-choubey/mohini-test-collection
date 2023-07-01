*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200/
${browser}      chrome
${email}    utkarsh@mistpl.com
${p/w}  Svast@1209

*** Test Cases ***
Globalserach
    insideGlobalserach


*** Keywords ***
insideGlobalserach
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1 seconds
    click button    xpath://button[normalize-space()='Other Login']
    input text      Xpath://input[@type='text']     ${email}
    input text      Xpath://input[@type='password']    ${p/w}
    click button    xpath://button[normalize-space()='Login']
    go to   http://localhost:4200/#/admin/workbench
    input text      Xpath://input[@placeholder='Global Search']     	1489437860
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	CIGNA
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		37860
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	Ashish
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		Dr Will Smith
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		Keystone First do not use (Medicaid)
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		133937
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		9706
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	utkarsh
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	03/19/2021
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	529
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	315
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     	136.97
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		COB INFORMATION
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		COVERED BY ANOTHER PAYOR
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		NEED ASSISTANCE
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		AR - APPEALS
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		01/11/2023
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		01/25/2023
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    input text      Xpath://input[@placeholder='Global Search']     		Sanjay
    press keys      Xpath://input[@placeholder='Global Search']     ENTER
    Click Element   xpath://span[normalize-space()='Clear Filter']
    Sleep   1
    Close browser