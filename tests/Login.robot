*Settings*
Documentation       Login test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   After Test

*Test Cases*
User Login
    [Tags]      smoke
    ${user}     Factory User      login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass
    [Tags]      i_pass      attempt_login

    ${user}     Create Dictionary       email=kesiasilvamartins@gmail.com       password=abc123

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Modal Content Should Be  Usuário e/ou senha inválidos.

User Not Found
    [Tags]      user_404

    ${user}     Create Dictionary       email=kesiasilvamartins@404.net      password=abc123

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Modal Content Should Be  Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]      i_email

    ${user}     Create Dictionary       email=kesia.com.br       password=abc123

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Should Be Type Email

Mandatory Email
    [Tags]      attempt_login      mand_email       des

    ${user}         Create Dictionary       email=${EMPTY}      password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Alert Span Should Be     E-mail obrigatório

Mandatory Pass
    [Tags]      attempt_login      mand_pass        des

    ${user}         Create Dictionary       email=kesia@gmail.com      password=${EMPTY}

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Alert Span Should Be     Senha obrigatória

Mandatory Fields
    [Tags]      attempt_login      mand_f       des

    @{expected_alerts}      Create List
    ...                     E-mail obrigatório
    ...                     Senha obrigatória

    Go To Login Page
    Submit Credentials
    Alert Spans Should Be     ${expected_alerts}