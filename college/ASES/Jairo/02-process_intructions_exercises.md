---
reviewed_on: "2024-09-22"
---

# Process intructions exercises

- `SET`: `SET M X NULL NULL`, stores the value `X` at memory address `M`. Where `X` is an immediate, direct or constant value. When `SET` is read, the value `X` is stored in memory without processor execution.

- `LDR` (load): `LDR M NULL NULL`, loads the value at memory address `M` and puts it into the accumulator register.

- `STR` (store): `STR M NULL NULL NULL` reads the value into the accumulator register and puts it into memory address `M`.

- `ADD` (add).

    1. `ADD M NULL NULL NULL`: adds the value at memory address `M` to the value loaded into the accumulator register.

    2. `ADD M1 M2 NULL`: loads the value at memory address `M1` into the accumulator register and adds it to the value found at memory address `M2`.

    3. `ADD M1 M2 M3`: same as `ADD M1 M2 NULL` but puts the result in `M3`.

- `SUB` (subtract).

    1. `SUB M NULL NULL NULL`: subtracts the value of memory address `M` from the value loaded in the accumulator register.

    2. `SUB M1 M2 NULL`: loads the value at memory address `M1` into the accumulator register and subtracts the value found at memory address `M2`.

    3. `SUB M1 M2 M3`: same as `SUB M1 M2 NULL` but puts the result in `M3`.

## 1

    ```
    01 - SET D400 10 NULL
    02 - SET D405 22 NULL
    03 - SET D410 15 NULL
    04 - SET D415 45 NULL
    05 - LDR D400 NULL NULL
    06 - ADD D405 NULL NULL
    07 - ADD D410 NULL NULL
    08 - STR D415 NULL NULL
    09 - LDR D415 NULL NULL
    10 - SUB D400 NULL NULL
    11 - STR D405 NULL NULL
    12 - SHW D405 NULL NULL
    13 - END NULL NULL NULL
    ```

    1. `D400 = 10`.

    2. `D405 = 22`.

    3. `D410 = 15`.

    4. `D415 = 45`.

    5. `ACC = D400 = 10`.

    6. `ACC = D400 + D405 = 10 + 22 = 32`.

    7. `ACC = 32 + D410 = 32 + 15 = 47`.

    8. `D415 = ACC = 47`.

    9. `ACC = D415 = 47`.

    10. `ACC = D415 - D400 = 47 - 10 = 37`.

    11. `D405 = ACC = 37`.

    12. `37`.

    The final values are:

    - `D400 = 10`.

    - `D405 = 37`.

    - `D410 = 15`.

    - `D415 = 47`.

    - `ACC = 37`.

## 2

    ```
    01 - SET D500 8 NULL
    02 - SET D505 12 NULL
    03 - SET D510 25 NULL
    04 - SET D515 60 NULL
    05 - LDR D500 NULL NULL
    06 - ADD D505 NULL NULL
    07 - SUB D510 NULL NULL
    08 - STR D515 NULL NULL
    09 - LDR D515 NULL NULL
    10 - ADD D505 NULL NULL
    11 - STR D510 NULL NULL
    12 - SHW D510 NULL NULL
    13 - END NULL NULL NULL
    ```

    1. `D500 = 8`.

    2. `D505 = 12`.

    3. `D510 = 25`.

    4. `D515 = 60`.

    5. `ACC = D500 = 8`.

    6. `ACC = D500 + D505 = 8 + 12 = 20`.

    7. `ACC = 20 - D510 = 20 - 25 = -5`.

    8. `D515 = ACC = -5`.

    9. `ACC =  -5`.

    10. `ACC = -5 + D505 = -5 + 12 = 7`.

    11. `D510 = ACC = 7`.

    12. `7`.

    The final values are:

    - `D500 = 8`.

    - `D505 = 12`.

    - `D510 = 7`.

    - `D515 = -5`.

    - `ACC = 7`.

## 3

    ```
    01 - SET D600 35 NULL
    02 - SET D605 50 NULL
    03 - SET D610 45 NULL
    04 - SET D615 20 NULL
    05 - LDR D600 NULL NULL
    06 - SUB D605 NULL NULL
    07 - ADD D610 NULL NULL
    08 - STR D615 NULL NULL
    09 - LDR D615 NULL NULL
    10 - SUB D600 NULL NULL
    11 - ADD D605 NULL NULL
    12 - STR D610 NULL NULL
    13 - SHW D610 NULL NULL
    14 - END NULL NULL NULL
    ```

    1. `D600 = 35`.

    2. `D605 = 50`.

    3. `D610 = 45`.

    4. `D615 = 20`.

    5. `ACC = D600 = 35`.

    6. `ACC = 35 - D605 = 35 - 50 = -15`.

    7. `ACC = -15 + D610 = -15 + 45 = 30`.

    8. `D615 = ACC = 30`.

    9. `ACC = D615 = 30`.

    10. `ACC = 30 - D600 = 30 - 35 = -5`.

    11. `ACC = -5 + 50 = 45`.

    12. `D610 = ACC = 45`.

    13. `45`.

    The final values are:

    - `D600 = 35`.

    - `D605 = 50`.

    - `D610 = 45`.

    - `D615 = 30`.

## 4

    ```
    01 - SET D12 12 NULL
    02 - SET D16 12 NULL
    03 - SET D20 12 NULL
    04 - SET D25 12 NULL
    05 - LDR D12 NULL NULL
    06 - LDR D15 NULL NULL
    07 - SUB D20 NULL NULL
    08 - STR D22 NULL NULL
    09 - SHW D22 NULL NULL
    10 - END NULL NULL NULL
    ```

    1. `D12 = 12`.

    2. `D16 = 12`.

    3. `D20 = 12`.

    4. `D25 = 12`.

    5. `ACC = D12 = 12`.

    6. `ACC = D15 = 0`.

        > Since `D15` is not set in the instructions, its value is undefined.

    7. `ACC = 0 - D20 = 0 - 12 = -12`.

    8. `D22 = ACC = -12`.

    9. `-12`.

    The final values are:

    - `D12 = 12`.

    - `D16 = 12`.

    - `D20 = 12`.

    - `D25 = 12`.

    - `D22 = -12`.

    - `D15 = 0`.

## 5

    ```
    01 - SET D32 18 NULL
    02 - SET D33 10 NULL
    03 - SET D34 15 NULL
    04 - SET D35 12 NULL
    05 - LDR D34 NULL NULL
    06 - ADD D33 NULL NULL
    07 - STR D32 NULL NULL
    08 - SUB D35 NULL NULL
    09 - SHW D33 NULL NULL
    10 - END NULL NULL NULL
    ```

    1. `D32 = 18`.

    2. `D33 = 10`.

    3. `D34 = 15`.

    4. `D35 = 12`.

    5. `ACC = D34 = 15`.

    6. `ACC = D34 + D33 = 15 + 10 = 25`.

    7. `D32 = ACC = 25`.

    8. `ACC = 25 - D35 = 25 - 12 = 13`.

    9. `10`.

    The final values are:

    - `D32 = 25`.

    - `D33 = 10`.

    - `D34 = 15`.

    - `D35 = 12`.

## 6

    ```
    01 - SET D53 33 NULL
    02 - SET D54 50 NULL
    03 - SET D55 5 NULL
    04 - SET D56 17 NULL
    05 - LDR D55 NULL NULL
    06 - LDR D56 NULL NULL
    07 - STR D55 NULL NULL
    08 - ADD D53 NULL NULL
    09 - SHW MAR NULL NULL
    10 - END NULL NULL NULL
    ```

    1. `D53 = 33`.

    2. `D54 = 50`.

    3. `D55 = 5`.

    4. `D56 = 17`.

    5. `ACC = D55 = 5`.

    6. `ACC = D56 = 17`.

    7. `D55 = ACC = D56 = 17`.

    8. `ACC = D56 + D53 = 17 + 33 = 50`.

    9. `D53 = 33`.

        > Assuming `MAR` holds the address of the last accessed memory location.

    The final values are:

    - `D53 = 33`.

    - `D54 = 50`.

    - `D55 = 17`.

    - `ACC = 50`.

    - `MAR = D53`.
