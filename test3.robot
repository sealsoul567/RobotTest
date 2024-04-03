*** Settings ***
Library    Browser

*** Variables ***
${url}   https://google.com/
${Text}     intro robot framework
${id}   //*[@id="APjFqb"]
${id3}     //*[@id="search"]
${id2}       //*[@id="rso"]/div[4]/div/div/div[1]/div/div/span/a/h3
${url2}      https://www.browserstack.com/guide/robot-framework-guide
***Keywords***
Open url
  Open Browser   ${url}
Input Text
    Fill Text      ${id}    ${Text}
Enter
    Keyboard Key    press    Enter
Click Link
    Click    ${id2}
    Sleep    10
Verify Search Page
    ${value}       Get Url      
    Should Be Equal    ${value}     ${url2}
*** Test Cases ***
Open Browser
    Open url
    Input Text
    Enter
    Click Link
    Verify Search Page 


    
    
  

