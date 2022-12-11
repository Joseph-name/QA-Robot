*** Setting ***
Documentation       Existe en documento de texto los pasos manuales
Library         Selenium2Library

*** Variables ***
${palabrasABuscar}   casos de prueba
${Navegador}   chrome
${URL}   https://www.google.com/
${path}   xpath=

*** Test Cases ***
G001 Busqueda de palabras en google
   Open Browser   ${URL}   ${Navegador}
   Wait Until Element Is Visible   xpath=/html/body/div[1]/div[2]/div/img
   Input Text   ${path}/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   ${palabrasABuscar}
   Click Element    ${path}/html/body/div[1]/div[2]/div/img
   Click Element    ${path}/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
   Title Should Be   ${palabrasABuscar} - Buscar con Google
   Page Should Contain      ${palabrasABuscar}
   Click Element     ${path}//*[@id="rso"]/div[1]/div/div/div/div[1]/div/a/h3
   Click Element     ${path}//*[@id="mw-normal-catlinks"]/ul/li/a
   Close Browser



G002 Hacer click en el boto de Busqueda sin escribir palabras en Google
   Open Browser   ${URL}   ${Navegador}
   Wait Until Element Is Visible   xpath=/html/body/div[1]/div[2]/div/img
   Click Element    ${path}/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
   Title Should Be   Google
   Close Browser