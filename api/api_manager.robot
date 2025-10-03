*** Settings ***
Library         RequestsLibrary
Variables       ../variable.py
Library         FakerLibrary


*** Keywords ***
Create Gorest Session
    [Arguments]    ${token}    ${alias}=gorest
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}
    Create Session    ${alias}    ${API_BASE_URL}    headers=${headers}

Create New Random User
    ${email}=    FakerLibrary.Email
    ${user_data}=    Create Dictionary    name=John    email=${email}    gender=male    status=active
    ${response}=    POST On Session    gorest    ${ENDPOINT_USER}    json=${user_data}    expected_status=anything
    RETURN    ${response.json()['id']}
