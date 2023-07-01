*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}      http://localhost:4200
${browser}      chrome


*** Test Cases ***
Start
    insidestart



*** Keywords ***
insidestart
    open browser    ${url}      ${browser}
    maximize browser window
    Sleep   5
    close browser

