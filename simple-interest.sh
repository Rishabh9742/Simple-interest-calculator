#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "==================================="
echo "    Simple Interest Calculator"
echo "==================================="
echo

# Function to validate if input is a positive number
validate_number() {
    local input=$1
    local field_name=$2
    
    # Check if input is empty
    if [[ -z "$input" ]]; then
        echo "Error: $field_name cannot be empty."
        return 1
    fi
    
    # Check if input is a valid number (integer or decimal)
    if ! [[ "$input" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo "Error: $field_name must be a valid positive number."
        return 1
    fi
    
    # Check if input is positive
    if (( $(echo "$input <= 0" | bc -l) )); then
        echo "Error: $field_name must be greater than 0."
        return 1
    fi
    
    return 0
}

# Get Principal Amount
while true; do
    read -p "Enter the principal amount: " principal
    if validate_number "$principal" "Principal amount"; then
        break
    fi
done

# Get Rate of Interest
while true; do
    read -p "Enter the rate of interest (annual %): " rate
    if validate_number "$rate" "Rate of interest"; then
        break
    fi
done

# Get Time Period
while true; do
    read -p "Enter the time period (in years): " time
    if validate_number "$time" "Time period"; then
        break
    fi
done

# Calculate Simple Interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Display Results
echo
echo "==================================="
echo "           CALCULATION RESULT"
echo "==================================="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate% per annum"
echo "Time Period: $time years"
echo "-----------------------------------"
echo "Simple Interest = $simple_interest"
echo "Total Amount = $(echo "scale=2; $principal + $simple_interest" | bc -l)"
echo "==================================="