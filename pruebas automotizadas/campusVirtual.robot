*** Setting ***
Documentation    Abrir campus virtual y loggear
Library     Selenium2Library

*** Variables ***
${navegador}   chrome
${URL}   https://campusvirtual.utn.ac.cr/login/index.php
${path}     xpath=
${palabras}   Gestion

*** Test Cases ***
G003 Login en campus virtual
    Open Browser    ${URL}   ${navegador}
    Wait Until Element Is Visible   ${path}//*[@id="logoimage"]
    Input Text   ${path}//*[@id="username"]     117930521
    Input Text   ${path}//*[@id="password"]     Joseph117*
    Click Element   ${path}//*[@id="loginbtn"]
    Click Element   ${path}//*[@id="yui_3_17_2_1_1665881299417_52"]