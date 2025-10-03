*** Settings ***
Library     SeleniumLibrary
Variables    ../variable.py
Resource    ../resources/pages/login.robot
Test Setup     Open Browser And Navigate To Page
Test Teardown    Close Browser


*** Test Cases ***
Login To The Page
    Login To The Page    robotremote@test.com     test123
    Element Should Be Visible    css:[href="/logout"]
    Element Should Be Visible    css:.fa-user
