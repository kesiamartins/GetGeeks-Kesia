*Settings*
Documentation       Be Geek Test Suite

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       After Test

*Test Cases*
Be A Geek
    [Tags]      smoke
    ${user}     Factory User    be_geek
    Do Login  ${user}

    Go To Geek Form
    Fill Geek Form  ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Success
    