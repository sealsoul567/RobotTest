*** Settings ***
Library    Browser

*** Variables ***
${url}   https://google.com/
${Text}     intro robot framework
${id}   //*[@id="APjFqb"]
${id2}       //*[@id="rso"]/div[4]/div/div/div[1]/div/div/span/a/h3
${id3}        //*[@id="rso"]/div[5]/div/div/div[1]/div/div/span/a/h3
${id4}        //*[@id="rso"]/div[6]/div/div/div[1]/div/div/span/a/h3
${items1}    https://www.browserstack.com/guide/robot-framework-guide
${items2}    https://medium.com/@aifakhri/brief-intro-to-robot-framework-and-extending-robot-framework-with-python-7c8b795dca7f
${items3}    https://testautomationu.applitools.com/robot-framework-tutorial/chapter1.html
@{list}    ${items1}   ${items2}    ${items3}
*** Test Cases ***
Example
    FOR    ${animal}    IN     ${id2}    ${id3}     ${id4}
        Log    ${animal}
        Open Browser   ${url}
        Fill Text      ${id}    ${Text}
        Keyboard Key    press    Enter
        Click    ${animal}
        Sleep    5
        ${value}       Get Url      
        Should Be Equal    ${value}     ${list[0]}  ${list[1]}  ${list[2]}
    END
    Log    Outside loopgit

