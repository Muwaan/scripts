#!/bin/bash 
#------------------------------------------------------------------------------
# This is 'master_scinet_structure' script by Alfredo Barrera at University of Toronto     
#                                      
#------------------------------------------------------------------------------

###create directories#####
mkdir k1 k2 k3 k4 k5 log
cd log
mkdir k1 k2 k3 k4 k5 
cd .. 

###create ans submit script files for k1###
n=1
while [ $n -le 10 ] 
do
printf '#!/bin/bash\n#MOAB/Torque submission script for SciNet GPC\n#\n#PBS -l nodes=1:ppn=8,walltime=30:00:00\n#PBS -N structure_k1_run'$n'\n\n# load modules\nmodule load gcc/4.6.1\n\n#DIRECTORY TO RUN - $PBS_O_WORKDIR is directory job was submitted from\ncd $SCRATCH/structure/Lepidothrix/nofiltall/k1\n\n# EXECUTION COMMAND;\n(cd ./ && exec $HOME/structure/console/structure -i $SCRATCH/structure/Lepidothrix/nofiltall/Lepidothrix_25_August_2015_STRUCTURE.txt -K 1 -o $SCRATCH/structure/Lepidothrix/nofiltall/k1/k1_run'$n' -m $SCRATCH/structure/Lepidothrix/nofiltall/mainparams -e $SCRATCH/structure/Lepidothrix/nofiltall/extraparams 2>&1 | tee $SCRATCH/structure/Lepidothrix/nofiltall/log/k1/k1_run'$n'.log)' > structure_k1_run_$n.txt
n=$(( n+1 ))
done
mv structure_k1* ./k1
cd k1
for file in structure_k1_run_{1..10}.txt
do
qsub /scratch/j/jweir/barrera3/structure/Lepidothrix/nofiltall/k1/$file
done
cd ..

###create ans submit script files for k2###
n=1
while [ $n -le 10 ] 
do
printf '#!/bin/bash\n#MOAB/Torque submission script for SciNet GPC\n#\n#PBS -l nodes=1:ppn=8,walltime=30:00:00\n#PBS -N structure_k2_run'$n'\n\n# load modules\nmodule load gcc/4.6.1\n\n#DIRECTORY TO RUN - $PBS_O_WORKDIR is directory job was submitted from\ncd $SCRATCH/structure/Lepidothrix/nofiltall/k2\n\n# EXECUTION COMMAND;\n(cd ./ && exec $HOME/structure/console/structure -i $SCRATCH/structure/Lepidothrix/nofiltall/Lepidothrix_25_August_2015_STRUCTURE.txt -K 2 -o $SCRATCH/structure/Lepidothrix/nofiltall/k2/k2_run'$n' -m $SCRATCH/structure/Lepidothrix/nofiltall/mainparams -e $SCRATCH/structure/Lepidothrix/nofiltall/extraparams 2>&1 | tee $SCRATCH/structure/Lepidothrix/nofiltall/log/k2/k2_run'$n'.log)' > structure_k2_run_$n.txt
n=$(( n+1 ))
done
mv structure_k2* ./k2
cd k2
for file in structure_k2_run_{1..10}.txt
do
qsub /scratch/j/jweir/barrera3/structure/Lepidothrix/nofiltall/k2/$file
done
cd ..
###create ans submit script files for k3###
n=1
while [ $n -le 10 ] 
do
printf '#!/bin/bash\n#MOAB/Torque submission script for SciNet GPC\n#\n#PBS -l nodes=1:ppn=8,walltime=30:00:00\n#PBS -N structure_k3_run'$n'\n\n# load modules\nmodule load gcc/4.6.1\n\n#DIRECTORY TO RUN - $PBS_O_WORKDIR is directory job was submitted from\ncd $SCRATCH/structure/Lepidothrix/nofiltall/k3\n\n# EXECUTION COMMAND;\n(cd ./ && exec $HOME/structure/console/structure -i $SCRATCH/structure/Lepidothrix/nofiltall/Lepidothrix_25_August_2015_STRUCTURE.txt -K 3 -o $SCRATCH/structure/Lepidothrix/nofiltall/k3/k3_run'$n' -m $SCRATCH/structure/Lepidothrix/nofiltall/mainparams -e $SCRATCH/structure/Lepidothrix/nofiltall/extraparams 2>&1 | tee $SCRATCH/structure/Lepidothrix/nofiltall/log/k3/k3_run'$n'.log)' > structure_k3_run_$n.txt
n=$(( n+1 ))
done
mv structure_k3* ./k3
cd k3
for file in structure_k3_run_{1..10}.txt
do
qsub /scratch/j/jweir/barrera3/structure/Lepidothrix/nofiltall/k3/$file
done
cd ..

###create ans submit script files for k4###
n=1
while [ $n -le 10 ] 
do
printf '#!/bin/bash\n#MOAB/Torque submission script for SciNet GPC\n#\n#PBS -l nodes=1:ppn=8,walltime=30:00:00\n#PBS -N structure_k4_run'$n'\n\n# load modules\nmodule load gcc/4.6.1\n\n#DIRECTORY TO RUN - $PBS_O_WORKDIR is directory job was submitted from\ncd $SCRATCH/structure/Lepidothrix/nofiltall/k4\n\n# EXECUTION COMMAND;\n(cd ./ && exec $HOME/structure/console/structure -i $SCRATCH/structure/Lepidothrix/nofiltall/Lepidothrix_25_August_2015_STRUCTURE.txt -K 4 -o $SCRATCH/structure/Lepidothrix/nofiltall/k4/k4_run'$n' -m $SCRATCH/structure/Lepidothrix/nofiltall/mainparams -e $SCRATCH/structure/Lepidothrix/nofiltall/extraparams 2>&1 | tee $SCRATCH/structure/Lepidothrix/nofiltall/log/k4/k4_run'$n'.log)' > structure_k4_run_$n.txt
n=$(( n+1 ))
done
mv structure_k4* ./k4
cd k4
for file in structure_k4_run_{1..10}.txt
do
qsub /scratch/j/jweir/barrera3/structure/Lepidothrix/nofiltall/k4/$file
done
cd ..

###create ans submit script files for k5###
n=1
while [ $n -le 10 ] 
do
printf '#!/bin/bash\n#MOAB/Torque submission script for SciNet GPC\n#\n#PBS -l nodes=1:ppn=8,walltime=30:00:00\n#PBS -N structure_k5_run'$n'\n\n# load modules\nmodule load gcc/4.6.1\n\n#DIRECTORY TO RUN - $PBS_O_WORKDIR is directory job was submitted from\ncd $SCRATCH/structure/Lepidothrix/nofiltall/k5\n\n# EXECUTION COMMAND;\n(cd ./ && exec $HOME/structure/console/structure -i $SCRATCH/structure/Lepidothrix/nofiltall/Lepidothrix_25_August_2015_STRUCTURE.txt -K 5 -o $SCRATCH/structure/Lepidothrix/nofiltall/k5/k5_run'$n' -m $SCRATCH/structure/Lepidothrix/nofiltall/mainparams -e $SCRATCH/structure/Lepidothrix/nofiltall/extraparams 2>&1 | tee $SCRATCH/structure/Lepidothrix/nofiltall/log/k5/k5_run'$n'.log)' > structure_k5_run_$n.txt
n=$(( n+1 ))
done
mv structure_k5* ./k5
cd k5
for file in structure_k5_run_{1..10}.txt
do
qsub /scratch/j/jweir/barrera3/structure/Lepidothrix/nofiltall/k5/$file
done
cd ..




