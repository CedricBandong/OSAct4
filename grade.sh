#!/bin/bash

grade() {
    local score=$1

    if (( score >= 90 && score <= 100 )); then
        echo "Grade A"
    elif (( score >= 80 && score < 89 )); then
        echo "Grade B"
    elif (( score >= 70 && score < 79 )); then
        echo "Grade C"
    elif (( score >= 60 && score < 69 )); then
        echo "Grade D"
    else (( score < 60 ));
        echo "Grade F"
    fi
}

read -p "Please enter your exam score (0-100): " score

if ! [[ "$score" =~ ^[0-9]+$ ]]; then
    echo "Invalid Input: Please enter a valid number."
    exit 1
fi

if (( score < 0 || score > 100 )); then
    echo "Invalid Input: Please enter a valid number."
else
    grade=$(grade "$score")
    echo "Your grade is: $grade"
fi
