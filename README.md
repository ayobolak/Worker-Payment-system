# Highridge Construction Company - Worker Payment System

## Description 
This project automates the weekly payment process for 400 dynamically generated workers using both Python and R.

## Files Included
- `payment_system.py`: Python script for worker generation and payment processing.
- `payment_sysR.R`: R script equivalent of the Python version.
- `README.md`: This file with instructions.

- 
## How to Use

### Python
1. Run `payment_system.py` in any Python 3 environment.
2. It will generate 400 workers and print their payment slips with employee levels.

### R
1. Run `payment_system.R` in any R environment (e.g., RStudio).
2. It will perform the same operation and print payment slips in the console.

## Logic
- Workers are assigned a level:
  - **A1**: Salary between $10,000 and $20,000.
  - **A5-F**: Female workers earning between $7,500 and $30,000.
  - Default: Unclassified.
- Includes error handling for any generation or processing errors.
