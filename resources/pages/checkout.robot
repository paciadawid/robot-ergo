*** Settings ***
Documentation       Page object for checkout features.

Library             SeleniumLibrary
Resource            ../environment.robot
Library             String
Library             ../helpers/PriceCalculator.py


*** Variables ***
${ITEM_TOTAL_PRICE_TEXT}   css:.cart_total .cart_total_price
${TOTAL_PRICE_TEXT}        css::not(.cart_total) > .cart_total_price


*** Keywords ***
Get Total Price
    ${TOTAL_PRICE}=    Get Text    ${TOTAL_PRICE_TEXT}
    ${TOTAL_PRICE}=    Calculate Total Price    ${TOTAL_PRICE}
    RETURN    ${TOTAL_PRICE}


Get Items Sum Price
    ${ELEMENTS}=    Get WebElements   ${ITEM_TOTAL_PRICE_TEXT}
    ${SUM}=    Calculate Items Sum Price    ${ELEMENTS}
    RETURN    ${SUM}
