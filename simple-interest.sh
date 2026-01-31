#!/bin/bash

# Simple Interest Calculator

echo "---------------------------------------"
echo "      Simple Interest Calculator       "
echo "---------------------------------------"

# Prompt user for input
read -p "Enter the Principal amount: " principal
read -p "Enter the Annual Rate of Interest (in %): " rate
read -p "Enter the Time period (in years): " time

# Calculate Simple Interest using 'bc' for floating-point math
# Formula: SI = (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $interest" | bc)

echo "---------------------------------------"
echo "Results:"
echo "Interest Earned: $interest"
echo "Total Amount:    $total"
echo "---------------------------------------"
