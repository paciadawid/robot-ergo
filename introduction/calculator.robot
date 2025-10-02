*** Test Cases ***
Test Addding 2 Values
    ${result}=    Add 2 Values    1    2
    Should Be Equal As Integers    ${result}    3

Test Division Positive
    ${result}=    Divide 2 Values    10    2
    Should Be Equal As Integers    ${result}    5

Test Division By Zero
    Run Keyword And Expect Error    *ZeroDivisionError*    Divide 2 Values    10    0


*** Keywords ***
Add 2 Values
    [Arguments]    ${a}    ${b}
    ${result}=    Evaluate    ${a} + ${b}
    RETURN    ${result}

Divide 2 Values
    [Arguments]    ${a}    ${b}
    ${result}=    Evaluate    ${a} / ${b}
    RETURN    ${result}
