*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    Chrome
${url}    https://google.com/
${expected_result}     Thailand

*** Keywords ***
เปิดเว็บ google.com
    Open Browser     ${url}     ${browser}
ค้นหาตาม keywords
    Input Text    name=q    ${expected_result}
    Submit Form  
รอผลลัพธ์
    Wait Until Page Contains    ${expected_result}

*** Test Cases ***
Search case
   เปิดเว็บ google.com
   ค้นหาตาม keywords
   รอผลลัพธ์