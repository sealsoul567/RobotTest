*** Settings ***
Library    Browser

*** Variables ***
${url}   https://google.com/
${Text}     intro robot framework
${id}   //*[@id="APjFqb"]
${old_timeout}  5

***Keywords***
Open url
  Open Browser   ${url}
Input Text
    Fill Text      ${id}    ${Text}
Enter
    Keyboard Key    press    Enter
Verify Search Page
    ${value}       Get Text      ${id}
    Should Be Equal    ${value}     ${Text}
*** Test Cases ***
Open Browser
    Open url
    Input Text
    Enter
    Verify Search Page

    
    
  

