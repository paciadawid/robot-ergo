*** Settings ***
Library         Collections
Library         String
Library         RequestsLibrary
Variables       ../variable.py
Resource        api_manager.robot

Suite Setup     Create Gorest Session    ${TOKEN}


*** Test Cases ***
Create New Post
    ${user_id}=    Create New Random User
    ${post_data}=    Create Dictionary    title=Test    body=Test    user_id=${user_id}
    ${response}=    POST On Session
    ...    gorest
    ...    ${ENDPOINT_USER}/${user_id}${ENDPOINT_POSTS}
    ...    json=${post_data}
    ...    expected_status=anything
    ${response}=    GET On Session    gorest    ${ENDPOINT_POSTS}/${response.json()['id']}
    Dictionary Should Contain Sub Dictionary    ${response.json()}    ${post_data}
    Should Be True    ${response.json()['id']} > 0
