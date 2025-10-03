*** Settings ***
Resource            ../resources/environment.robot
Resource            ../resources/pages/search.robot

Test Setup          Open Browser And Navigate To Page
Test Teardown       Close Browser


*** Test Cases ***
Check Search Of Non Existing Products
    Open Products Page
    Search For Product    test
    Should Have Number Of Elements Visible    0

Check Search For 2 Existing Products
    Open Products Page
    Search For Product    unicorn
    Should Have Number Of Elements Visible    2
