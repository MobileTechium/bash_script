#!/bin/sh

# Author: OluwaKorede Hemmars
# Project: BAsh

# CLEAR THE TERMINAL
sleep 1
clear

# MOBILETECHIUM Welcome Animation Special Function
MOBILETECHIUM_WELCOME_ANIMATION () {
	local name="M.O.B.I.L.E.T.E.C.H.I.U.M"
	local name_length="${#name}"
	local ANSI_bold="\e[1m"
	local ANSI_cyan="\e[1;36m"
	local break_ANSI="\e[0m"
	local time_break="0.3"

	for (( m = 0; m < name_length; m++ ));
	do
		echo -en ${ANSI_bold}${ANSI_cyan}${name:m:1}${break_ANSI}
		sleep $time_break
	done
		echo""
	}

sleep 1
MOBILETECHIUM_WELCOME_ANIMATION

# MOBILETECHUIM Loading Animation
MOBILETECHIUM_LOADING_ANIMATION () {
	for _ in {1..2};
	do
		echo -n "Loading"
		for _ in {1..3};
		do
			sleep 1
			echo -n "."
		done
		sleep 0.7
		echo -en "\r          \r"
	done
}

sleep 1
MOBILETECHIUM_LOADING_ANIMATION

# INTRODUCTION
sleep 1
echo ""
echo "----------"
echo "Hello user, what is your name?"
read -p "Enter your name: " user

sleep 1
echo ""
echo -e "Welcome to \e[1;36mMOBILETECHIUM\e[0m, ${user}."
echo "I am Hemmars, it is nice to meet you."
echo "----------"

# MOBILETECHIUM_Proficiency
MOBILETECHIUM_PROFICIENCY () {
	until ((proficiency >= 1 && proficiency <= 4));
	do
		echo ""
		echo "Select your profiency below: "
		echo "1) Beginner"
		echo "2) Intermediate"
		echo "3) Advanced"
		echo "4) Expert"
		read -p "Enter the corresponding proficiency: " proficiency
	done
	echo ""
	case $proficiency in
		1) echo "Beginner"
			;;
		2) echo "Intermediate"
			;;
		3) echo "Advanced"
			;;
		4) echo "Expert"
			;;
		*) echo "Invalid input: Please enter a number between 1 and 4"
			;;
	esac
}

sleep 1
MOBILETECHIUM_PROFICIENCY

# ABOUT
# ABOUT: Author
# echo "ABOUT Author"
# echo -e "\tMy name is OluwaKorede Hemmars, ..."
