*Settings*
Documentation       Temp

Library     Collections

*Test Cases*
Trabalhado Com Listas
    @{avengers}     Create List     Tony Stark      Kamalakhan      Steve Rogers

    Append To List      ${avengers}     Bruce Banner
    Append To List      ${avengers}     Scott Lang

    FOR     ${a}    IN      @{avengers}
        Log To Console      ${a}
    END

    @{avengers2}    Create List     Tony Stark      Miss Marvel     Steve Rogers    Bruce Banner    Scott Lang

    Lists Should Be Equal   ${avengers}     ${avengers2}