*** Settings ***
Library    Browser

*** Variables ***
${url}          https://google.com/
${Text1}        Candy
${Text2}        intro robot framework
${id}           //*[@id="APjFqb"]
${old_timeout}  5

*** Keywords ***
Open URL
    Open Browser    ${url}

Input Text
    [Arguments]    ${Text}
    Fill Text    ${id}    ${Text}

Press Enter
    Keyboard Key    press    Enter

Verify Search Page
    [Arguments]    ${Text}
    ${value}    Get Text    ${id}
    Should Be Equal    ${value}    ${Text}

*** Test Cases ***
Test 1 S 01
    Open URL
    Input Text    ${Text1} 
    Press Enter
    Verify Search Page    ${Text1}

Test 1 S 02
    Open URL
    Input Text    ${Text2} 
    Press Enter
    Verify Search Page    ${Text2}
