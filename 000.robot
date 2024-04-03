*** Settings ***
Library    Browser

*** Variables ***
${url}   https://google.com/
${Text}     intro robot framework
${id}   //*[@id="APjFqb"]
${id2}       //*[@id="rso"]/div[4]/div/div/div[1]/div/div/span/a/h3
${id3}        //*[@id="rso"]/div[5]/div/div/div[1]/div/div/span/a/h3
${id4}        //*[@id="rso"]/div[6]/div/div/div[1]/div/div/span/a/h3
${items}    https://www.browserstack.com/guide/robot-framework-guide

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
        Should Be Equal    ${value}     https://medium.com/@aifakhri/brief-intro-to-robot-framework-and-extending-robot-framework-with-python-7c8b795dca7f, https://testautomationu.applitools.com/robot-framework-tutorial/chapter1.html
    END
    Log    Outside loopgit

