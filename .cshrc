#!/bin/tcsh

#======================================================================
#----------------------------- GOODIES --------------------------------
#======================================================================
alias ls "ls --color=tty"
# if (${TERM} == "rxvt-unicode") setenv TERM "xterm"
setenv TMPDIR /tmp
#setenv PETSC_DIR /usr/local/petsc-3.2-p7
#setenv PETSC_DIR /usr/local/petsc-3.4.3
#setenv PETSC_DIR /home/paul/Software/petsc-3.6.0
setenv PETSC_DIR /home/paul/Software/petsc-3.6.3
setenv GRIDPRO /usr/local/GridPro
setenv GTS_BIN /usr/local/bin
#date
setenv GIT_BRANCH_CMD "sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'"
set prompt='%n@%m:%~$ '
set fignore = ( .o \~ )
set history = 1000 savehist = 1000
setenv TEXINPUTS :${HOME}/.latex//
setenv SDL_VIDEO_X11_DGAMOUSE 0
setenv SVN_EDITOR vim

#
# Multiflow development
#
setenv MFTL_DIR /home/paul/src/C/MFTL
setenv PETSC_ARCH linux-gcc-opt
setenv MF_UNSTR /home/paul/src/eclipseworkspace/Unstructured
setenv MF_STRUC /home/paul/src/eclipseworkspace/MultiFlow
#setenv TETGEN_DIR /home/paul/Software/tetgen1.5.0

    set path= \
   ( . \
        $path  \
       ~/bin \
        /usr/local/eclipse \
	/usr/local/bin              \
        /usr/lib64/java/bin \
        /usr/X11R6/bin \
        /usr/share/texmf/bin \
        $GRIDPRO/bin \
   )

    # Set the MANPATH environment variable
	setenv ADDTMP ~/bin/man:/usr/man:/usr/local/man:/usr/X11R6/man:/usr/share/man:/usr/lib/perl5/man

	if ($?MANPATH) then
		setenv MANPATH $MANPATH":$ADDTMP"
	else
		setenv MANPATH $ADDTMP
	endif

    # Set the LD_LIBRARY_PATH environment variable
	setenv ADDTMP /usr/lib64:/usr/lib:/usr/local/lib:~/linux/lib:/opt/qt4/lib:~/Software/qhull-2012.1/lib
	if ($?OPENWINHOME) then
		setenv ADDTMP $ADDTMP":$OPENWINHOME/lib"
		set path = ( $path $OPENWINHOME/bin $OPENWINHOME/demo )
	endif

	if ($?LD_LIBRARY_PATH) then
		setenv LD_LIBRARY_PATH $LD_LIBRARY_PATH":$ADDTMP"
	else
		setenv LD_LIBRARY_PATH $ADDTMP
	endif
	unsetenv ADDTMP

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# End .cshrc
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# My env
setenv TETGEN_HOME ~/Software/tetgen1.5.0
#setenv GMSH_HOME ~/Software/gmsh-2.8.5-Linux
setenv GMSH_HOME ~/Software/gmsh-2.10.0-Linux
setenv HPC login.cx1.hpc.ic.ac.uk
setenv PETSC_OPTIONS "--with-debugging=no --download-metis=yes --download-parmetis=yes --with-errorchecking=no --download-hdf5"
setenv PETSC_OPTIMISE "COPTFLAGS='-O3 -march=native -mtune=native' CXXOPTFLAGS='-O3 -march=native -mtune=native' FOPTFLAGS='-O3 -march=native -mtune=native'"
setenv PETSC_GPU "--download-viennacl --with-opencl-include=/usr/include/CL --with-opencl-lib=/home/paul/libnvidia-opencl.so"
setenv CHEM_DIR ~/src/eclipseworkspace/MFchem
setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:~/Software
setenv GMSHTOH5_DIR ~/src/REPOS/svn/GMSHtoHDF5
#setenv UNSTRUC_DIR ~/src/eclipseworkspace/Unstructured
setenv UNSTRUC_DIR ~/src/C/Unstructured
setenv UNSTRUC_SVN ~/src/REPOS/svn/Unstructured
setenv UNSTRUC_DIR ${UNSTRUC_SVN}
setenv UNSTRUC_GIT ~/src/REPOS/git/Unstructured
setenv UNSTRUC_BUILD ~/src/build/Unstructured
setenv MFPOLY_DIR ~/src/C/MFpoly
setenv MPI_HOME /usr
setenv TETGEN_DIR $UNSTRUC_DIR/src/mesh/sources/TetGen
setenv HDF5_DIR ${PETSC_DIR}/${PETSC_ARCH}
setenv CONVERTTOH5_DIR ~/src/REPOS/svn/ConvertToHDF5/
setenv H5TOVTK_DIR ~/src/REPOS/svn/HDF5toVTK/
setenv MY_PETSC_CURRENT ${PETSC_DIR}
if($?PYTHONPATH) then
  setenv PYTHONPATH ${PYTHONPATH}":/home/paul/lib64/python:~/Software/python:~/src/python"
else
  setenv PYTHONPATH "/home/paul/lib64/python:~/Software/python:~/src/python"
endif
setenv GMSHCONV_DIR ~/src/C/gmshToMultiflow

# My aliases
alias gmsh $GMSH_HOME/bin/gmsh
alias tetgen $TETGEN_HOME/tetgen
alias Unstructured $MF_UNSTR/Debug/Unstructured
alias hpc "echo $HPC"
alias clang /usr/bin/clang
alias clang++ /usr/bin/clang++
alias buildbotLogin "ssh buildbot@solidsserv"
alias solidsserveLogin "ssh root@solidsserv"
alias hpcLogin "ssh ptb08@login.cx1.hpc.ic.ac.uk"
alias cmake_clean "rm -r CMakeFiles CMakeCache.txt Makefile cmake_install.cmake"
alias cmake_clean_build "cmake_clean && cmake ./ && make"
#alias testEulEul ~/src/Scripts/testEulEul.sh
alias testEulEul ~/src/C/testFiles_EulEul/testEulEul.sh
alias checkPETSc "echo PETSC_DIR=${PETSC_DIR}"
alias newPETSc "setenv PETSC_DIR ~/Software/petsc-3.6.0 && checkPETSc"
alias oldPETSc "setenv PETSC_DIR ${MY_PETSC_CURRENT} && checkPETSc"
alias cppcheck ~/Software/cppcheck-1.69/cppcheck
alias analyseUnstructured "cppcheck -q ${UNSTRUC_DIR}/ "
alias astyle "~/Software/astyle/build/gcc/bin/astyle"
alias Unstructured_exe "${UNSTRUC_BUILD}/Unstructured"
alias compareFields "python ~/src/python/pyNuMeth/postProc/compareFields.py"
alias julia ~/Software/julia-0.4.0/bin/julia
alias h5tovtk ~/src/REPOS/svn/HDF5toVTK/build/h5tovtk
alias gmshtoh5 ~/src/build/GMSHtoHDF5/build/gmshtoh5
alias converttoh5 ~/src/REPOS/svn/ConvertToHDF5/Build/converttoh5
alias blender ~/Software/blender-2.76b-linux-glibc211-x86_64/blender
alias todo "emacs ~/org/PhD.org"
alias zotero "~/Software/Zotero_linux-x86_64/zotero"
alias emacs "rm .emacs.d; rm .emacs; ln -s ~/.gnuemacs.d ~/.emacs.d && ln -s ~/src/dotfiles/.emacs ~/.emacs && /usr/bin/emacs"
alias spacemacs "rm .emacs.d; rm .emacs; ln -s ~/.spacemacs.d ~/.emacs.d && /usr/bin/emacs"
