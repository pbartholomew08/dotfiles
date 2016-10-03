#!/bin/bash

source ~/.bash_profile

#alias gmsh=/home/paul/Software/gmsh-2.9.3-Linux/bin/gmsh
alias gmsh=/home/paul/Software/gmsh-2.10.0-Linux/bin/gmsh
alias tetgen=/home/paul/Software/tetgen1.5.0/bin/tetgen
alias triangle=/home/paul/Software/triangle/bin/triangle
alias eclipse=/home/paul/Software/eclipse/eclipse
#alias emacs="env TERM=xterm-256color emacs -nw"
alias emacs="rm ~/.emacs.d ; rm ~/.emacs ; ln -s ~/.gnuemacs.d ~/.emacs.d && ln -s ~/src/REPOS/git/dotfiles/.emacs ~/.emacs && /usr/local/bin/emacs"
alias spacemacs="rm ~/.emacs.d ; rm ~/.emacs ; ln -s ~/.spacemacs.d ~/.emacs.d && /usr/local/bin/emacs &"
alias todo="emacs ~/todo.org"
alias todoPhD="emacs ~/org/PhD.org"

alias testUnstructured=/home/paul/src/scripts/testEulEul.sh

alias lacomp=~/src/scripts/lacomp.sh

alias cmake_clean="rm CMakeCache.txt && rm -r CMakeFiles && rm cmake_install.cmake && rm Makefile"

alias lighttable=~/Software/LightTable/LightTable

alias zotero=~/Software/Zotero_linux-x86_64/zotero

alias clang-format=clang-format-3.4

# ParaView
alias paraview=${PARAVIEW_HOME}/bin/paraview
alias pvpython=${PARAVIEW_HOME}/bin/pvpython
alias pvbatch=${PARAVIEW_HOME}/bin/pvbatch
