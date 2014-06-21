#!/bin/bash
#If unexpected EOF try running 'dos2unix make.sh' command
echo -e "\e[1m\e[34mBuilding latex\e[0m\e[39m"
latexmk -gg -silent -bibtex -pdf experiment2.tex | grep -i warning
echo -e "\e[1m\e[34mBuild complete\e[0m\e[39m"

if [ ! $# -eq 0 ]; then
        if [ "$1" = "publish" ]; then
                read -p "What is your NTNU username:" un
                scp Children_study.pdf $un@login.stud.ntnu.no:public_html/Children_study.pdf
        fi
fi
