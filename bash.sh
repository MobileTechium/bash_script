#!/bin/sh

#Author: OluwaKorede Hemmars
#Project: BAsh

#CLEAR THE TERMINAL
sleep 1
clear

#MOBILETECHIUM Welcome Animation Special Function
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

sleep 1
MOBILETECHIUM_WELCOME_ANIMATION

#MOBILETECHUIM Loading Animation
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

sleep 1
MOBILETECHIUM_LOADING_ANIMATION

#INTRODUCTION
sleep 1
echo "----------"
echo "Hello User, what is your name?"
read -p "Enter your name: " user

sleep 1
echo ""

echo -e "Welcome to \e[1;36mMOBILETECHIUM\e[0m."
echo "My name is Hemmars, it's nice to meet you, ${user}."
echo "----------"

sleep 1
MOBILETECHIUM_LOADING_ANIMATION

#MOBILETECHIUM Proficiency
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

#MOBILETECHIUM Beginner Proficiency
MOBILETECHIUM_BEGINNER_PROFICIENCY () {
	echo -e "\e[1;32mBeginner\e[0m"
	sleep 2
	echo ""
	echo -e "\e[0;44mWELCOME TO LINUX!!!\e[0m"
	sleep 2

BEGINNER_INTRO=$(cat << EOF
	I have to be honest, there is so much to learn. But don't worry, I will be giving you the basic stuff you need to know. My plan is to get across to the new linux converts on how to get accustomed with the Command Line Interface (CLI) but before we proceed, we need to know a few concepts.
EOF
)

#BEGINNER INTRO ANIMATION
BEGINNER_INTRO_LENGTH="${#BEGINNER_INTRO}"
text_speed=0.03
for (( BIL="0"; BIL < BEGINNER_INTRO_LENGTH; BIL++ ));
do
	echo -en "${BEGINNER_INTRO:BIL:1}"
	sleep $text_speed
done
echo ""

BEGINNER_LINUX=$(cat << EOF
What is Linux?
	Linux is a unix-like open source and community-developed operating system which is capable of handling activities from multiple users at the same time. Linux, which can also be called a kernel (OS), can also be explained as a computer program that allocates the system resources and coordinates all the details of the computer's internals. In my terms, it is like the heart of the operating system.
EOF
)

#BEGINNER LINUX ANIMATION
BEGINNER_LINUX_LENGTH="${#BEGINNER_LINUX}"
text_speed=0.03
echo ""
sleep 2
for (( BLL="0"; BLL < BEGINNER_LINUX_LENGTH; BLL++ ));
do
	echo -en "${BEGINNER_LINUX:BLL:1}"
	sleep $text_speed
done
echo ""

BEGINNER_SHELL=$(cat << EOF
What is Shell?
	This is a command line interpreter. It basically translates commands entered by the user and converts them into a language that the kernel understands, linux in our case. Now, let us proceed:
EOF
)

#BEGINNER SHELL ANIMATION
BEGINNER_SHELL_LENGTH="${#BEGINNER_SHELL}"
text_speed=0.03
echo ""
sleep 2
for (( BSL="0"; BSL < BEGINNER_SHELL_LENGTH; BSL++ ));
do
	echo -en "${BEGINNER_SHELL:BSL:1}"
	sleep $text_speed
done
echo ""

BEGINNER_COMMANDS=$(cat << EOF
The following are the basic commands you need to get accustomed with as a beginner:
A. cd: This is used to change your directory.
B. pwd: This is used to print your current working directory.
C. ls: This is used to list the files in a directory.
D. cp (e.g cp file.txt): This is used to copy files.
E. mv (e.g mv file.txt): This can be used to move or rename a file.
F. rm (e.g rm file.txt): This is used to remove a file.
G. echo (e.g echo "My name is Hemmars"): This is used to print text.
H. cat (e.g cat file.txt): This means concatenate, but it is mostly used to read a text file i.e it displays the content of a file.
I. less (e.g less file.txt): This is similar to cat, but it displays the content of a file in a new window.
J. command --help (e.g cd --help): This is used to show the manual or description of a command.
K. command | grep (e.g ls | grep file.txt): This is used to narrow down a search or grab data from a specific file. "|" is known as the piping symbol.
L. touch (e.g touch file.txt): This is used to create files with extentions of your choice.
M. mkdir (e.g mkdir file): This is used to create a directory, it can at times be referred to as a folder.
N. rmdir (e.g rmdir file): This is used to remove a directory.

Wow, the fact that you got to this stage is impressive. Now, let's play a game.
The terminal will clear in 5 seconds!!!
EOF
)

#BEGINNER COMMANDS ANIMATION
BEGINNER_COMMANDS_LENGTH="${#BEGINNER_COMMANDS}"
text_speed=0.06
sleep 5
clear
sleep 1
for (( BCL="0"; BCL < BEGINNER_COMMANDS_LENGTH; BCL++ ));
do
	echo -en "${BEGINNER_COMMANDS:BCL:1}"
	sleep $text_speed
done
echo ""
sleep 5
clear
sleep 2

QUIZ () {
	local quiz="Q.U.I.Z"
	local quiz_length=${#quiz}
	local time_break=0.3

	for (( q = 0; q < quiz_length; q++))
	do
		echo -n "${quiz:q:1}"
		sleep $time_break
	done
	echo ""

	echo "Instructions: You are type A, B, C, or D to answer the quiz"
	echo "Are you ready? "
	read -p "Yes or No: " ready
}

QUIZ
}

#MOBILETECHIUM Advanced Proficiency
MOBILETECHIUM_ADVANCED_PROFICIENCY () {
	echo -e "\e[1;32mAdvanced\e[0m"
	sleep 2
echo "Hmmm, an advanced."
}

#MOBILETECHIUM Expert Proficiency
MOBILETECHIUM_EXPERT_PROFICIENCY () {
	echo -e "\e[1;32mExpert\e[0m"
	sleep 2
	echo "Did you read the script before running it?"
	read -p "Yes or No: "
}

#MOBILETECHIUM User Proficiency Selection
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

sleep 1
MOBILETECHIUM_USER_PROFICIENCY_SELECTION








# ABOUT
# ABOUT: Author
# echo "ABOUT Author"
# echo -e "\tMy name is OluwaKorede Hemmars, ..."
