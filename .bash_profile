# ~/.bash_profile
# spacemacs complains that I'm edditing PATH in .bashrc,
# says that I should move it here

#################################################
# My environment variables
export MPI_HOME=/usr
export SVN_EDITOR=vim
export PATH=${PATH}:~/bin

# General development
export SRC=~/src
export C_HOME=${SRC}/C
export LATEX_HOME=${SRC}/LaTeX

# PETSc
#export PETSC_DIR=/home/paul/Software/petsc-3.4.5
export PETSC_DIR=/home/paul/Software/petsc-3.6.0
export PETSC_ARCH=arch-linux2-c-opt
export PETSC_OPTIONS="--with-debugging=no --with-errorchecking=no --download-metis --download-parmetis --download-hdf5"
export PETSC_OPTIMISE="COPTFLAGS='-O3 -march=native -mtune=native' CXXOPTFLAGS='-O3 -march=native -mtune=native' FOPTFLAGS='-O3 -march=native -mtune=native'"

# MultiFlow development
export CHEM_DIR=${SRC}/eclipseworkspace/MFchem
#export UNSTRUC_DIR=/home/paul/src/eclipseworkspace/Unstructured
export UNSTRUC_DIR=${SRC}/C/Unstructured
export UNSTRUC_SVN=${SRC}/REPOS/svn/Unstructured
export UNSTRUC_GIT=${SRC}/REPOS/git/Unstructured
export UNSTRUC_BUILD=${SRC}/build/Unstructured
export MFTL_DIR=${SRC}/C/MFTL
#export TETGEN_DIR=/home/paul/Software/tetgen1.5.0
export TETGEN_DIR=${UNSTRUC_DIR}/src/mesh/sources/TetGen
export GMSHCONV_DIR=/home/paul/src/C/gmshToMultiflow
export MFmesh_DIR=/home/paul/src/C/meshConverter
export MFmesh_BUILD=/home/paul/src/build/MFmeshConverter

# GOLANG
export GOPATH=/home/paul/src/go
export PATH=$PATH:$GOPATH/bin
#export GOBIN=$GOPATH/bin

# PYTHON
MYPYTHONPATH=~/src/python
MYPYTHONPATH=$MYPYTHONPATH:~/src/MultiFlow-Utilities
if [ -z "$PYTHONPATH" ]; then
  export PYTHONPATH=$MYPYTHONPATH
else
  export PYTHONPATH=$PYTHONPATH:$MYPYTHONPATH
fi

export GRIDPRO=/home/paul/GridPro

export XKEYSYMDB=$GRIDPRO/az_mngr/XKeysymDB

# GRIDPRO
export PATH=$PATH:/home/paul/GridPro/bin

# ParaView
alias paraview=~/Software/ParaView-4.4.0-Qt4-Linux-64bit/bin/paraview
