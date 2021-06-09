<!--
SPDX-FileCopyrightText: 2021 Junde Yhi <junde@yhi.moe>
SPDX-License-Identifier: CC0-1.0
-->

# Step FPGA Board Peripheral Export

This simple SystemVerilog module connects all on-board peripherals on the [STEP-MAX10][step-max10] FPGA development board to its external GPIO pins, exposing them to external users.

Theoretically this can also be used on the [STEP-MXO2][step-mxo2] variant, but it's not tested yet.

[step-max10]: http://www.stepfpga.org/step-max10-development-board/
[step-mxo2]: http://www.stepfpga.org/step-mxo2-development-board/

## Pinout Definition

- All input ports are configured as tri-state input with weak pull-ups; turn them on by grounding or outputting a low level to the pins.
- All output ports (i.e. switches and buttons / keys) are active high.

|35 - 34|33|32|31|30|29 - 22|21 - 18|
|-|-|-|-|-|-|-|
|Reserved|Display 1 Enable|Display 1 Decimal Point|Display 2 Enable|Display 2 Decimal Point|LD1 - LD8|SW1 - SW4|

|0 - 3|4 - 7|8|9|10|11|12|13|14 - 17|
|-|-|-|-|-|-|-|-|-|
|Display 1 Number|Display 2 Number|LED1 Red|LED1 Green|LED1 Blue|LED2 Red|LED2 Green|LED2 Blue|K1 - K4|

## License

See the comment header on each file or the correspoding `.license` file for licensing information. In general:

- The hardware design (i.e. SystemVerilog files) of this project is licensed under the CERN Open Hardware Licence Version 2 - Permissive.
- Other documentations are (un)licensed under the [CC0 1.0][cc0] license.

See [LICENSES/](LICENSES/) for the full license texts. Alternatively, [LICENSE](LICENSE) is provided for non-REUSE practices.

[reuse]: https://reuse.software/
[cc0]: https://creativecommons.org/publicdomain/zero/1.0/
