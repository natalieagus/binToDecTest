# Test Repo for binToDec LucidV2 Module

## Simulation output

Works fully in simulation, two cases:

1. Upon run, display 4321 at 7seg
   ![alt](/images/README/2024-09-10-17-48-19.png)
2. If ioDip[0][0] is up, shows 5 at 7seg. This uses given library module `binToDec.luc`
   ![alt](/images/README/2024-09-10-17-48-59.png)

## Hardware output

Compilation is **successful**. Case (1) works as expected:
![alt](/images/README/2024-09-10-17-49-50.png)

but case (2) does not display anything on the 7seg:
![alt](/images/README/2024-09-10-17-50-09.png)

**Cause**: the output of binToDec.digits[2:0] of show `1011 1011 1011` instead of `1010 1010 0101`, so the 7 seg does not light up.

> Tested on AlchitryLabV2 latest commit when this readme is written: [7571d63bba25ac28f8cdf8994c583705cda22ad4](https://github.com/alchitry/Alchitry-Labs-V2/commit/7571d63bba25ac28f8cdf8994c583705cda22ad4) using Vivado 2023.2.
