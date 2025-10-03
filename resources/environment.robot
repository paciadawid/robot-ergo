*** Settings ***
Library     SeleniumLibrary
Variables    ../variable.py


*** Variables ***
${CONSENT_BUTTON}    class:fc-cta-consent


*** Keywords ***
Navigate To The Page
    [Arguments]    ${ENDPOINT}=${EMPTY}
    Go To   ${BASE_URL}${ENDPOINT}


Open Browser And Navigate To Page
    [Arguments]    ${ENDPOINT}=${EMPTY}
    Open Browser    ${BASE_URL}${ENDPOINT}    ${BROWSER}
    Set Selenium Implicit Wait    ${TIMEOUT}
    Maximize Browser Window
    Click Element    ${CONSENT_BUTTON}
