#!/bin/bash
read -p "What is your NTNU username:" un
scp Masterprosjekt.pdf $un@login.stud.ntnu.no:public_html/Masterprosjekt.pdf
