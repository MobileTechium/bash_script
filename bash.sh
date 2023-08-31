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
	local time_break="0.1"

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
			sleep 0.18
			echo -n "."
		done
		sleep 0.2
		echo -en "\r          \r"
	done
}

sleep 1
MOBILETECHIUM_LOADING_ANIMATION

#INTRODUCTION
INTRODUCTION () {
EFFECT () {
	local text="$1"
	local length=${#text}
	local time_break=0.05

	for (( i = 0; i < length; i++ )); do
		echo -n "${text:i:1}"
		sleep $time_break
	done
	echo ""
}

sleep 1
EFFECT "----------"
EFFECT "Hello User, what is your name? "
read -p "Enter your name: " user

sleep 1
echo ""

EFFECT "Welcome to MOBILETECHIUM."
EFFECT "My name is Hemmars, it's nice to meet you, ${user}."
EFFECT "----------"
}

INTRODUCTION
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
	echo -e "\e[0;44mWELCOME TO LINUX\e[0m"
	sleep 2

BEGINNER_INTRO=$(cat << EOF
	I have to be honest, there is so much to learn. But don't worry, I will be giving you the basic stuff you need to know. My plan is to get across to the new linux converts on how to get accustomed with the Command Line Interface (CLI) but before we proceed, we need to know a few concepts.
EOF
)

#BEGINNER Intro Animation
BEGINNER_INTRO_LENGTH="${#BEGINNER_INTRO}"
text_speed=0.02
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

#BEGINNER Linux Animation
BEGINNER_LINUX_LENGTH="${#BEGINNER_LINUX}"
text_speed=0.02
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

#BEGINNER Shell Animation
BEGINNER_SHELL_LENGTH="${#BEGINNER_SHELL}"
text_speed=0.02
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

#BEGINNER Commands Animation
BEGINNER_COMMANDS_LENGTH="${#BEGINNER_COMMANDS}"
text_speed=0.02
echo ""
echo ""
read -p "Press ENTER to continue"
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

#MOBILETECHIUM Beginner Quiz
MOBILETECHIUM_QUIZ_INTRO () {
	local quiz="Q.U.I.Z"
	local quiz_length=${#quiz}
	local time_break=0.1

	for (( q = 0; q < quiz_length; q++))
	do
		echo -n "${quiz:q:1}"
		sleep $time_break
	done
	echo ""
}

EFFECT () {
	 local text="$1"
	 local length=${#text}
	 local time_break=0.05

	 for (( i = 0; i < length; i++ )); do
		 echo -n "${text:i:1}"
		 sleep $time_break
	 done
	 echo ""
}

INSTRUCTIONS () {
	EFFECT "Instructions: Type A, B, C, or D to answer the quiz"
	EFFECT "Note: Any other keyword or phrase will be considered as a wrong answer"
	EFFECT "Are you ready? "
	while true;
	do
		read -p "Yes or No: " ready
		if [[ "$ready" == "Yes" || "$ready" == "yes" ]]; then
			break
		elif [[ "$ready" == "No" || "$ready" == "no" ]]; then
			echo "Alright, maybe next time!"
			exit 0
		else
			echo "Please enter either 'Yes' or 'No'."
		fi
	done
	echo ""
}

QUESTION_1 () {
	local question="What is the piping symbol?"
	local options=("A. \\ B. / C. | D. P")
	local answer="C"

	EFFECT "$question"
	EFFECT "${options[@]}"
	read -p "Answer: " user_answer

	if [[ "$user_answer" == "$answer" ]];
	then
		echo "Correct!"
		((score++))
	else
		echo "Incorrect. The correct answer is $answer."
	fi
	echo ""
}

QUESTION_2 () {
	local question="Which command is used to concatenate a text file?"
	local options=("A. less B. cat C. more D. touch")
	local answer="B"

	EFFECT "$question"
	EFFECT "${options[@]}"
	read -p "Answer: " user_answer

	if [[ "$user_answer" == "$answer" ]];
	then
		echo "Correct!"
		((score++))
	else
		echo "Incorrect. The correct answer is $answer."
	fi
	echo ""
}

QUESTION_3() {
	local question="What does CLI mean?"
	local options=("A. Command Line Interpreter B. Command Line Interface C. Code Line Interpreter D. Code Line Interface")
	local answer="B"

	EFFECT "$question"
	EFFECT "${options[@]}"
	read -p "Answer: " user_answer

	if [[ "$user_answer" == "$answer" ]];
	then
		echo "Correct!"
		((score++))
	else
		echo "Incorrect. The correct answer is $answer."
	fi
	echo ""
}

QUESTION_4 () {
	local question="What is Linux?"
	local options=("A. OS B. Kernel C. None of the above D. All of the above")
	local answer="D"

	EFFECT "$question"
	EFFECT "${options[@]}"
	read -p "Answer: " user_answer

	if [[ "$user_answer" == "$answer" ]];
	then
		echo "Correct!"
		((score++))
	else
		echo "Incorrect. The correct answer is $answer."
	fi
	echo ""
}

QUESTION_5 () {
	local question="Which of the following is not a text editor on Linux?"
	local options=("A. Visual Studio Code B. Nano C. Vim D. Sublime Text")
	local answer="A"

	EFFECT "$question"
	EFFECT "${options[@]}"
	read -p "Answer: " user_answer

	if [[ "$user_answer" == "$answer" ]];
	then
		echo "Correct!"
		((score++))
	else
		echo "Incorrect. The correct answer is $answer."
	fi
	echo ""
}

score=0

#MOBILETECHIUM Quiz Intro
MOBILETECHIUM_QUIZ_INTRO
INSTRUCTIONS

#QUIZ Affirmation
if [[ "$ready" == "Yes" || "$ready" == "yes" ]];
then

#QUESTIONS
QUESTION_1
QUESTION_2
QUESTION_3
QUESTION_4
QUESTION_5

#FINAL_SCORE
echo "Quiz completed! Your score is $score out of 5."
else
	echo "Alright, maybe next time!"
fi

}

#MOBILETECHIUM Advanced Proficiency
MOBILETECHIUM_ADVANCED_PROFICIENCY () {
	EFFECT () {
		local text="$1"
		local length=${#text}
		local time_break=0.05

		for (( i = 0; i < length; i++ ));
		do
			echo -n "${text:i:1}"
			sleep $time_break
		done
		echo ""
	}

	echo -e "\e[1;32mAdvanced\e[0m"
	sleep 2
	echo "WELCOME"


#ADVANCED Intro
ADVANCED_INTRO=$(cat << EOF
	To be honest, I don't have much to say to you as an advanced user, but a few tips would actually do. Here are a few:
1. Before running a script, always read it before running it.
2. Master the command line interface.
3. Start working on your own shell project, start from somewhere.
4. Master at least three text editor but I do advice that you have a preferenced text editor, don't let people decide for you.
5. Learn virtualization.
6. Learn files permissions.
7. Learn git.

Obviously, there are more but I recommend you improve yourself to become better at using linux.
EOF
)

ADVANCED_INTRO_LENGTH="${#ADVANCED_INTRO}"
text_speed=0.05
echo ""
sleep 2
for (( AIL="0"; AIL < ADVANCED_INTRO_LENGTH; AIL++ ));
do
	echo -en "${ADVANCED_INTRO:AIL:1}"
	sleep $text_speed
done
echo ""

sleep 1
EFFECT "Now, let's play a game."
sleep 1
clear
sleep 1

EFFECT "Objective: You are to find the infinite loop in the script, comment it."
sleep 2
nano bash.sh

while true;
do
	echo "PLEASE, COMMENT ME!!!"
done

#Duh, that was quite easy!!!
#Do not leave yet, the game continues here. I promise, this is the last one. (Laughing Sarcastically)

#Also, don't worry, I have taken measures to avoid cheating.
#Before I proceed, here are what you will do:
#Task 1: Comment the loop above.
#Task 2: Now, comment the variable named "ADVANCED_INTRO_LENGTH".
#

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


#ABOUT
ABOUT=$(cat << EOF
ABOUT ME
	Hello, I am Emmanuel Ogunjobi, the founder of MobileTechium. I love two things: playing around with computers and playing chess. At first glance, I thought these two things might not seem to have much in common, but after a while I got to find out that they actually connect in a really cool way and they are teaching me some unexpected things.
	THANK YOU SO MUCH...
	My Website: mobiletechium.tech
EOF
)

#ABOUT_EFFECT
MOBILETECHIUM_ABOUT_EFFECT () {
	ABOUT_LENGTH="${#ABOUT}"
	text_speed=0.07
	
	echo ""
	echo "---------"
	for (( MAE = 0; MAE < ABOUT_LENGTH; MAE++ ));
	do
		echo -en "${ABOUT:MAE:1}"
		sleep $text_speed
	done
	echo ""
	echo "----------"
	echo ""

}
MOBILETECHIUM_ABOUT_EFFECT
}

sleep 1
MOBILETECHIUM_USER_PROFICIENCY_SELECTION

