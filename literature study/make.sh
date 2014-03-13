echo -e "\e[1m\e[34mBuilding latex\e[0m\e[39m"
latexmk -gg -silent -bibtex -pdf Literature\ study.tex | grep -i warning
echo -e "\e[1m\e[34mBuild complete\e[0m\e[39m"
