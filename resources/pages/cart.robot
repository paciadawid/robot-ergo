*** Settings ***
Documentation       Page object for cart features.

Library             SeleniumLibrary
Resource            ../environment.robot


*** Variables ***
${CART_TAB}         css:.fa-shopping-cart
${PROCEED_TO_CHECKOUT_BUTTON}   css:.check_out


*** Keywords ***
Open Cart Page
    Click Element    ${CART_TAB}

Proceed To Checkout
    Click Element    ${PROCEED_TO_CHECKOUT_BUTTON}
