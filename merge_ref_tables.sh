## file to merge multiple independent runs of DIYABC in a single reftable.bin file
## put this script in to your working directory with all your folders of DIYABC runs
## replace Lepi_outlier_test_final_ with the name of your DIYABC folders (excluding the numeration)
## replace the path /home/pipra/Documents/Software/diyabc-2.0.4/src-JMC-C++/general with your actual DIYABC binary path

## the merged runs will be created in a folder called master_reftable 

#!/bin/bash
mkdir master_reftable
i=1
for file in Lepi_outlier_test_final_{1..5}/reftable.bin
do
cp -n $file ./master_reftable/reftable_$i.bin
i=$(( i+1 ))
done
(cd ./ && exec /home/pipra/Documents/Software/diyabc-2.0.4/src-JMC-C++/general -p /home/pipra/Documents/Alfredo/scinet/prueba/test/master_reftable/ -q /home/pipra/Documents/Alfredo/scinet/prueba/test/master_reftable/reftable_$j.bin)
cp -r -n Lepi_outlier_test_final_1 Lepi_outlier_test_final_definitive
rm ./Lepi_outlier_test_final_definitive/reftable.bin
cp -n ./master_reftable/reftable.bin ./Lepi_outlier_test_final_definitive/reftable.bin 



