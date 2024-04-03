*** Settings ***
Library    Browser

*** Variables ***
${url}       https://google.com/
${Text1}     Candy
${Text2}     intro robot framework
${id}        //*[@id="APjFqb"]
${old_timeout}  5

***Keywords***
Open url
  Open Browser   ${url}
Input Text
    [Arguments]  ${Text}
    Fill Text      ${id}    ${Text}
Enter
    Keyboard Key    press    Enter
Verify Search Page
    ${value}       Get Text      ${id}
    [Arguments]    ${Text}
    Should Be Equal    ${value}     ${Text}
*** Test Cases ***
Test 1 S 01
    Open url
    Input Text    ${Text1} 
    Enter
    Verify Search Page    ${Text1}
Test 1 S 02
    Open url
    Input Text   ${Text2} 
    Enter
    Verify Search Page    ${Text2}
    
    
  

