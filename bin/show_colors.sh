#!/bin/bash
echo -e "${COLOR_NC}COLOR_NC (No color)"
echo -e "${COLOR_WHITE}COLOR_WHITE\t${COLOR_BLACK}COLOR_BLACK"
echo -e "${COLOR_BLUE}COLOR_BLUE\t${COLOR_LIGHT_BLUE}COLOR_LIGHT_BLUE"
echo -e "${COLOR_GREEN}COLOR_GREEN\t${COLOR_LIGHT_GREEN}COLOR_LIGHT_GREEN"
echo -e "${COLOR_CYAN}COLOR_CYAN\t${COLOR_LIGHT_CYAN}COLOR_LIGHT_CYAN"
echo -e "${COLOR_RED}COLOR_RED\t${COLOR_LIGHT_RED}COLOR_LIGHT_RED"
echo -e "${COLOR_PURPLE}COLOR_PURPLE\t${COLOR_LIGHT_PURPLE}COLOR_LIGHT_PURPLE"
echo -e "${COLOR_BROWN}COLOR_BROWN\t${COLOR_YELLOW}COLOR_YELLOW"
echo -e "${COLOR_GRAY}COLOR_GRAY\t${COLOR_LIGHT_GRAY}COLOR_LIGHT_GRAY\n"


############################################################
# Nico Golde <nico(at)ngolde.de> Homepage: http://www.ngolde.de
# Last change: Mon Feb 16 16:24:41 CET 2004
############################################################

for attr in 0 1 4 5 7 ; do
echo "----------------------------------------------------------------"
    printf "ESC[%s;Foreground;Background - \n" $attr
    for fore in 30 31 32 33 34 35 36 37; do
for back in 40 41 42 43 44 45 46 47; do
printf '\033[%s;%s;%sm %02s;%02s ' $attr $fore $back $fore $back
        done
printf '\n'
    done
printf '\033[0m'
done
