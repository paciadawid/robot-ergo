*** Settings ***
Library     SeleniumLibrary
Suite Setup     Open Browser And Navigate To Page
Suite Teardown    Close Browser
Resource    ../resources/pages/products.robot
Resource    ../resources/pages/cart.robot
Resource    ../resources/pages/login.robot
Resource    ../resources/pages/checkout.robot


*** Test Cases ***
Check if Prices Sum Up Correctly
    [Setup]    Login To The Page    robotremote@test.com     test123
    Open Products Page
    Add Product To Cart    Summer
    Add Product To Cart    Winter
    Open Cart Page
    Proceed To Checkout
    ${total_price}=    Get Total Price
    ${items_sum_price}=    Get Items Sum Price
    Should Be Equal As Integers    ${total_price}    ${items_sum_price}


