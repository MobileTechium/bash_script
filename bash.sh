#!/bin/sh

# Author: OluwaKorede Hemmars
# Project: BAsh

# CLEAR THE TERMINAL
#sleep 1
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
	echo ""
	}

#sleep 1
#MOBILETECHIUM_WELCOME_ANIMATION

# MOBILETECHUIM Loading Animation
MOBILETECHIUM_LOADING_ANIMATION () {
	for _ in {1..2};
	do
		echo -n "Loading"
		for _ in {1..3};
		do
			sleep 0.5
			echo -n "."
		done
		sleep 0.5
		echo -en "\r          \r"
	done
}

#sleep 1
#MOBILETECHIUM_LOADING_ANIMATION

# INTRODUCTION
#sleep 1
echo "----------"
echo "Hello user, what is your name?"
read -p "Enter your name: " user

#sleep 1
echo ""
echo -e "Welcome to \e[1;36mMOBILETECHIUM\e[0m, ${user}."
echo "I am Hemmars, it's nice to meet you."
echo "----------"

#sleep 1
#MOBILETECHIUM_LOADING_ANIMATION

# MOBILETECHIUM_Proficiency
MOBILETECHIUM_PROFICIENCY () {
	proficiency="0"
	until ((proficiency >= 1 && proficiency <= 3));
	do
		echo ""
		echo "Select your profiency below: "
		echo "1 - Beginner"
		echo "2 - Advanced"
		echo "3 - Expert"
		read -p "Enter the corresponding proficiency: " proficiency
		
		if (!((proficiency >= 1 && proficiency <= 3)));
		then
			echo -e "\e[31mInvalid input:\e[0m Please enter a number between 1 and 3"
		fi
	done
	echo ""
	echo "You have chosen the proficiency $proficiency."
	return $proficiency
}


# MOBILETECHIUM_BEGINNER_PROFICIENCY
MOBILETECHIUM_BEGINNER_PROFICIENCY () {
	BEGINNER_TEXT=$(cat << EOF
I have to be honest, there is so much to learn. But don't worry, I will be giving you the basic stuff you need to know. My basic plan initially is to get across to the new Linux converts on how to get accustomed with the command line interface (CLI) but before we proceed, we need to know few concepts.
What is Linux?
	Linux is a unix-like open source and commnunity-developed operating system for which is capable of handling activities from multiple users at the same time. Linux, which can also be called a kernel (OS) can also be explained as a computer program that allocates the system resources and coordinate all the details of teh comuter's internals. In my term, it is like the heart of the operating system.
EOF
)
	 echo -e "\e[1;32mBeginner\e[0m"
	 sleep 2
	 echo ""
	 echo -e "\e[0;44mWELCOME TO LINUX!!!\e[0m"
	 sleep 2

# MBAT = MOBILETECHIUM_BEGINNER_ANIMATION_TEXT (LOL)
	for((MBAT="0"; MBAT < ${#BEGINNER_TEXT}; MBAT++));
	do
		echo -n "${BEGINNER_TEXT:MBAT:1}"
		sleep 80
		((MBAT % 20 ==0)) && ((0.08 -= 0.05)) 
	done
	echo ""
 }

# MOBILETECHIUM_ADVANCED_PROFICIENCY
MOBILETECHIUM_ADVANCED_PROFICIENCY () {
	echo -e "\e[1;32mAdvanced\e[0m"
	sleep 2
	echo "Hmmm, an advanced."
}

# MOBILETECHIUM_EXPERT_PROFICIENCY
MOBILETECHIUM_EXPERT_PROFICIENCY () {
	echo -e "\e[1;32mExpert\e[0m"
	sleep 2
	echo "Did you read the script before running it"
}

# MOBILETECHIUM_USER_PROFICIENCY_SELECTION
MOBILETECHIUM_USER_PROFICIENCY_SELECTION () {
	local proficiency
	MOBILETECHIUM_PROFICIENCY
	proficiency=$?

	case $proficiency in
		1) MOBILETECHIUM_BEGINNER_PROFICIENCY
			;;
		2) MOBILETECHIUM_ADVANCED_PROFICIENCY
			;;
		3) MOBILETECHIUM_EXPERT_PROFICIENCY
			;;
		*) echo "Invalid Input: Please enter a number between 1 and 3"
			;;
	esac

}

#sleep 1
MOBILETECHIUM_USER_PROFICIENCY_SELECTION








# ABOUT
# ABOUT: Author
# echo "ABOUT Author"
# echo -e "\tMy name is OluwaKorede Hemmars, ..."
