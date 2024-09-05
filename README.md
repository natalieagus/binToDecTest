# Test Repo for binToDec LucidV2 Module

Works fully in simulation:

1. Upon run, display 4321 in 7seg
2. If ioDip[0][0] is up, shows 5
3. If ioDip[0][1] is up, shows 7

When trying to compile:

Error shows up about `binToDec.digits` parameter:

![alt](/images/README/2024-09-05-17-03-50.png)

Tested on AlchitryLabv2 2.0.13 commit: [34e21f28143294ec147b6cb81116e0c49c3a08e2](https://github.com/alchitry/Alchitry-Labs-V2/commit/34e21f28143294ec147b6cb81116e0c49c3a08e2) using Vivado 2023.2.
