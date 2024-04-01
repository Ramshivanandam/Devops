#!/bin/bash

# Function to determine grade
get_grade() {
    score=$1

    if (( score >= 90 )); then
        grade="A"
    elif (( score >= 80 )); then
        grade="B"
    elif (( score >= 70 )); then
        grade="C"
    elif (( score >= 60 )); then
        grade="D"
    else
        grade="F"
    fi

    echo "Score: $score, Grade: $grade"
}

# Main script starts here

# Get user input for the score
read -p "Enter the score: " score

# Call the get_grade function with the provided score
get_grade $score
