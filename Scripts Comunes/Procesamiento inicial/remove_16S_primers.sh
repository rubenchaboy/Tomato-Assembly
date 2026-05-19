#!/bin/bash

#--La carpeta en la que estas
resultdir=/ngs/microbios/Daniel/Trabajos/Paula
#--Deberias ponerle un nombre unico para que no se sobreescriba si hay 2 ejecuciones
workdir=/junk/$USER/"output_"$$ 

#--Check if workdir exits, if so delete it, and then create it 
if [ -d $workdir ]
    then
    rm -fr $workdir
fi
mkdir -p $workdir
cd $workdir

#--Copy required data to temporal folder
cp -r $resultdir/R1inicial $workdir
cp -r $resultdir/R2inicial $workdir

#--Running
source ${HOME}/conda_init
conda activate cutadaptenv  
python /ngs/microbios/Daniel/scripts/remove_799F_1193R.py -c 12
conda deactivate

#--Copy results 
cp -r $workdir/R1 $resultdir
cp -r $workdir/R2 $resultdir

#--Remove working directory to release disk space 
rm -rf $workdir

