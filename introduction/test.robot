*** Settings ***
#    Library    SeleniumLibrary


*** Variables ***
${MY_VARIABLE}      test_variable
@{MY_LIST}          first_item    second_item    third_item
&{MY_DICTIONARY}    key1=value1    key2=value2    key3=value3
${NAME}             Dawid
${SURNAME}          Pacia


*** Test Cases ***
Print Variables
    Log    ${MY_VARIABLE}
    ${LOCAL_VARIABLE}=    Get Length    ${MY_LIST}
    Log    Length is ${LOCAL_VARIABLE}


Check Full Name
    ${FULL_NAME}=    Catenate    ${NAME}    ${SURNAME}
    Log    ${FULL_NAME}
    Should Be Equal As Strings    ${FULL_NAME}    ${NAME} ${SURNAME}


*** Keywords ***
