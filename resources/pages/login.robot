*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CONSENT_BUTTON}    class:fc-cta-consent
${LOGIN_TAB}      css:.fa-lock
${EMAIL_INPUT}     css:[data-qa="login-email"]
${PASSWORD_INPUT}  css:[data-qa="login-password"]
${LOGIN_BUTTON}    css:[data-qa="login-button"]


*** Keywords ***
Login To The Page
    [Arguments]    ${email}    ${password}
    Click Element    ${CONSENT_BUTTON}
    Click Element    ${LOGIN_TAB}
    Input Text    ${EMAIL_INPUT}    ${email}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Click Element    ${LOGIN_BUTTON}
