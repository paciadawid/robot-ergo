*** Settings ***
Library     SeleniumLibrary
Resource    ../environment.robot

*** Variables ***

${LOGIN_TAB}      css:.fa-lock
${EMAIL_INPUT}     css:[data-qa="login-email"]
${PASSWORD_INPUT}  css:[data-qa="login-password"]
${LOGIN_BUTTON}    css:[data-qa="login-button"]
${LOGIN_ENDPOINT}    /login

*** Keywords ***
Login To The Page
    [Arguments]    ${email}    ${password}
    Navigate To The Page    ${LOGIN_ENDPOINT}
    Click Element    ${LOGIN_TAB}
    Input Text    ${EMAIL_INPUT}    ${email}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Click Element    ${LOGIN_BUTTON}
