###copy the same folder (or file) n times and rename the copies adding a sequence of numbers. After that it creates a RNG file for DIYABC with randon number of seeds within each folder
###place the script in to the same path as the folder or file you want to copy 
###in seq just change the range of the number of copies you want, also change the syntax {1..68} according the number of copies you want to create
### just replace lepicomplete_full with the name of the folder you want to copy 

#!/bin/bash
for number in `seq 1 68`
do
cp -r -n Lepidofullminoralleles3000SNP_ Lepidofullminoralleles3000SNP_$number
rm ./Lepidofullminoralleles3000SNP_$number/RNG_state_0000.bin
done
i=$RANDOM
for folder in Lepidofullminoralleles3000SNP_{1..68}
do 
cd /home/pipra/Documents/Software/diyabc-2.0.4/src-JMC-C++; ./general -p /home/pipra/Documents/Alfredo/scinet/prueba/$folder/ -n "t:8;c:1;s:$i"
i=$(( RANDOM ))
done





