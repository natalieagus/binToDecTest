# Test Repo for binToDec LucidV2 Module 

Partially works in simulation:
1. Upon run, display 4321 in 7seg 
2. If ioDip[0][0] is up, shows nothing (should've shown 5)
3. If ioDip[0][1] is up, shows 7 (expected behavior)

In hardware (Alchitry Au):
1. Upon run, display 4321 in 7 seg (expected)
2. If ioDip[0][0] is up, shows nothing (should've shown 5)
3. If ioDip[0][1] is up, shows nothing (should've shown 7 like in simulation)


Tested on AlchitryLabv2 2.0.12 using Vivado 2023.2. 


