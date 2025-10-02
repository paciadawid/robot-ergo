*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://automationexercise.com/
${BROWSER}      chrome
${TIMEOUT}      10s


*** Test Cases ***
Check Search Of Non Existing Products
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${TIMEOUT}
    Click Element    class:fc-cta-consent
    Click Element    class:card_travel
    Input Text    id:search_product    test
    Click Element    id:submit_search
    Element Should Not Be Visible    class:single-products
    Close Browser


Check Search For 2 Existing Products
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${TIMEOUT}
    Click Element    class:fc-cta-consent
    Click Element    class:card_travel
    Input Text    id:search_product    unicorn
    Click Element    id:submit_search
    

    # Option 1
    ${NUMBER_OF_ELEMENTS}=   Get Element Count    class:single-products
    Should Be Equal As Integers   ${NUMBER_OF_ELEMENTS}    2

    # Option 2
    Page Should Contain Element    class:single-products    limit=2

    Close Browser
