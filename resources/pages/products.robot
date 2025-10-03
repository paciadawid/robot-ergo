*** Settings ***
Documentation       Page object for product search features.

Library             SeleniumLibrary
Resource            ../environment.robot


*** Variables ***
${PRODUCTS_TAB}         class:card_travel
${SEARCH_INPUT}         id:search_product
${SEARCH_BUTTON}        id:submit_search
${SEARCH_RESULTS}       class:single-products
${ADD_TO_CART_BUTTON}   css:.overlay-content .add-to-cart
${CONTINUE_SHOPPING_BUTTON}   class:close-modal
${ENDPOINT_PRODUCTS}    /products


*** Keywords ***
Open Products Page
    [Documentation]    Open homepage and navigate to products section.
    Navigate To The Page    ${ENDPOINT_PRODUCTS}

Search For Product
    [Documentation]    Enter search query and submit.
    [Arguments]    ${product_name}
    Input Text    ${SEARCH_INPUT}    ${product_name}
    Click Element    ${SEARCH_BUTTON}

Get Number Of Search Results
    [Documentation]    Return number of product elements in search results.
    ${count}=    Get Element Count    ${SEARCH_RESULTS}
    RETURN    ${count}

Should Have Number Of Elements Visible
    [Arguments]    ${expected}
    ${count}=    Get Number Of Search Results
    Should Be Equal As Integers    ${count}    ${expected}

Add Product To Cart
    [Arguments]    ${product_name}
    Search For Product    ${product_name}
    Mouse Over    ${SEARCH_RESULTS}
    Click Element    ${ADD_TO_CART_BUTTON}
    Click Element    ${CONTINUE_SHOPPING_BUTTON}
