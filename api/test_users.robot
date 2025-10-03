*** Settings ***
Library         Collections
Library         String
Library         RequestsLibrary
Library         FakerLibrary
Resource        api_manager.robot
Variables       ../variable.py

Suite Setup     Create Gorest Session    ${TOKEN}


*** Test Cases ***
Check Single User
    ${response}=    GET On Session    gorest    ${ENDPOINT_USER}/8161297
    ${response_body}=    Set Variable    ${response.json()}

    Should Be True    ${response_body['id']} > 0
    Should Be String    ${response_body['name']}
    Should Be String    ${response_body['email']}
    Should Contain Any    ${response_body['gender']}    male    female
    Should Contain Any    ${response_body['status']}    active    inactive

Create New User
    ${email}=    FakerLibrary.Email
    ${user_data}=    Create Dictionary    name=John    email=${email}    gender=male    status=active
    ${response}=    POST On Session    gorest    ${ENDPOINT_USER}    json=${user_data}    expected_status=anything
    ${response}=    GET On Session    gorest    ${ENDPOINT_USER}/${response.json()['id']}
    Dictionary Should Contain Sub Dictionary    ${response.json()}    ${user_data}
    Should Be True    ${response.json()['id']} > 0
