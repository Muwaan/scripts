###create n number of script copies with input file names with a sequence of numbers added 
###in [ $n -le 68 ] just replace the 68 with number of copies you want to create
###after the the command printf you can paste any command you want to copy in multiple scripts, don't forget the quotation marks and remember that each \n means a space
### replace full_m_alleles_ with the name for the final copies name and replace .txt with the format you want  

#!/bin/bash
n=1
while [ $n -le 68 ] 
do
printf '#!/bin/bash\n#MOAB/Torque submission script for SciNet GPC\n#\n#PBS -l nodes=1:ppn=8,walltime=48:00:00\n#PBS -N full_outlier_test\n\n# load modules\nmodule load intel/14.0.1 gnu-parallel/20140622 gcc/4.8.1\n\n#DIRECTORY TO RUN - $PBS_O_WORKDIR is directory job was submitted from\ncd $SCRATCH/stacks/ABC/full_minor_alleles_3000_SNP\n\n# EXECUTION COMMAND;\ncd $HOME/diyabc-2.0.4/src-JMC-C++; ./general -p /scratch/j/jweir/barrera3/stacks/ABC/full_minor_alleles_3000_SNP/Lepidofullminoralleles3000SNP_'$n'/ -z /scratch/j/jweir/barrera3/stacks/ABC/full_minor_alelle/full_minor_alleles_3000_SNP/Lepidofullminoralleles3000SNP_'$n'/RNG_state_0000.bin -r 90000 -g 100 -m -t 8' > full_m_alleles_$n.txt
n=$(( n+1 ))
done 




