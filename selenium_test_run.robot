*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://automationexercise.com/
${BROWSER}      chrome
${TIMEOUT}      10s


*** Test Cases ***
Open Google
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${TIMEOUT}
    Click Element    class:fc-cta-consent
    Element Should Be Visible    class:logo
    Element Should Be Visible    css:.navbar-nav .fa-shopping-cart
    Get WebElement    id:susbscribe_email
    Element Should Be Visible    css:.control-carousel.right
    Element Should Be Visible    css:.brands_products > h2
    Element Should Be Visible    id:footer
    Get WebElement    id:scrollUp
    Should Be Larger    2    1


*** Keywords ***
Should Be Larger
    [Arguments]    ${a}    ${b}
    Should Be True    ${a} > ${b}
