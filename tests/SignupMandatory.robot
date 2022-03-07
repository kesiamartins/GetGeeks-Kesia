*Settings*
Documentation       Signup Mandatory Test Suite

Resource        ${EXECDIR}/resources/Base.robot

Suite Setup      Signup Without Fill Form
Test Teardown   Finish Session

*Test Cases*
Name Is Mandatory
    Alert Span Should Be  Cadê o seu nome?
 
Lastname Is Mandatory
    Alert Span Should Be  E o sobrenome?

Email Is Mandatory
    Alert Span Should Be  O email é importante também!

Password Is Mandatory
    Alert Span Should Be  Agora só falta a senha!

*Keywords*
Signup Without Fill Form
    Start Session
    Go To Signup Form
    Submit Signup Form