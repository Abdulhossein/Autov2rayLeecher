# Autov2rayLeecher
## V2Ray Configuration Collector

This repository contains a Python script that collects V2Ray configuration links from specified Telegram channels, categorizes them by region based on the IP addresses contained within the links, and saves these configurations into a structured directory. Additionally, it updates a README file to include links to the saved configurations.

---

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [How It Works](#how-it-works)
- [Automating the Process](#automating-the-process)
- [Contribution](#contribution)
- [License](#license)

---

## Features
- Collects V2Ray configuration links from various Telegram channels.
- Categorizes configurations by region based on IP addresses.
- Saves configurations in a structured folder format.
- Automatically updates a README file with links to the saved configurations.

---

## Requirements
- Python 3.x
- `requests` library
- `beautifulsoup4` library

Install the required libraries using pip:

```bash
pip install requests beautifulsoup4
```
## Installation
1. **Clone the Repository**:
   Clone this repository to your local machine:
```bash
git clone https://github.com/yourusername/V2rayConfigs.git
cd V2rayConfigs
```


2. **Run the Script**:
   Make sure you have Python installed, and then run the script:
```bash
python3 leecher.py
```


This will generate a folder named `sub` containing the V2Ray configuration files.
## Usage
Once the script has run successfully, you will find the following:
- A folder named `sub` containing region-specific folders with `config.txt` files that hold the V2Ray configurations.
- A `README.md` file that includes links to the saved configuration files.
You can use these configuration files in your V2Ray client by importing the links provided in the README.
## How It Works
1. **Collecting Links**:
   - The script fetches content from specified Telegram channels using the `requests` library.
   - It parses the HTML content using `BeautifulSoup` to extract V2Ray configuration links that start with `vless://`, `ss://`, `trojan://`, or `tuic://`.
2. **Determining Regions**:
   - For each configuration link, the script extracts the IP address and uses various APIs to determine the geographical region associated with that IP.
3. **Saving Configurations**:
   - The configurations are saved in a structured manner within the `sub` directory, categorized by region.
4. **Updating README**:
   - The script updates the `README.md` file to include links to the saved configuration files.
## Automating the Process
To automate the running of the script and uploading the generated files to GitHub, you can create a shell script (for Linux/macOS) or a batch file (for Windows). This allows you to execute the entire process with a single command.
### Example Shell Script (`automate.sh`)

```bash
#!/bin/bash

# Enable strict mode to catch errors early
set -e  # Exit immediately if a command exits with a non-zero status
set -o pipefail  # Ensures all parts of a pipeline fail correctly

# Step 1: Navigate to the project directory
PROJECT_DIR="path/to/your/project"  # Change this to your actual path
cd "$PROJECT_DIR" || { echo "Error: Directory $PROJECT_DIR does not exist."; exit 1; }

# Step 2: Run the Python script
if ! python3 leecher.py; then
  echo "Error: Python script failed to execute."
  exit 1
fi

# Step 3: Add the sub folder to Git
if ! git add sub; then
  echo "Error: Failed to add sub folder to Git."
  exit 1
fi

# Step 4: Commit changes
if ! git commit -m "Update V2Ray configuration files"; then
  echo "Error: Git commit failed. Check for staged changes or conflicts."
  exit 1
fi

# Step 5: Pull the latest changes from the remote repository to prevent push rejection
if ! git pull origin main --rebase; then
  echo "Error: Failed to pull and rebase. Check for conflicts."
  exit 1
fi

# Step 6: Push changes to GitHub
if ! git push origin main; then
  echo "Error: Failed to push changes to the remote repository."
  exit 1
fi

# Output success message
echo "Automated script executed successfully!"

```
### Correct Permissions
```bash
chmod +x automate.sh
```

### Example Batch File (`automate.bat` for Windows)
```batch
@echo off

REM Enable error handling to stop the script on failure
setlocal EnableDelayedExpansion

REM Step 1: Navigate to the project directory
cd /d path\to\your\project  REM Change this to your actual path

REM Step 2: Run the Python script
python leecher.py
if errorlevel 1 (
  echo Error: Python script execution failed.
  exit /b 1
)

REM Step 3: Add the sub folder to Git
git add sub
if errorlevel 1 (
  echo Error: Failed to stage the 'sub' folder for Git.
  exit /b 1
)

REM Step 4: Commit changes
git commit -m "Update V2Ray configuration files"
if errorlevel 1 (
  echo Error: Git commit failed. Check for staged changes or conflicts.
  exit /b 1
)

REM Step 5: Pull the latest changes from remote
git pull origin main --rebase
if errorlevel 1 (
  echo Error: Failed to pull and rebase the latest changes from remote.
  exit /b 1
)

REM Step 6: Push changes to GitHub
git push origin main
if errorlevel 1 (
  echo Error: Failed to push changes to the remote repository.
  exit /b 1
)

REM Output success message
echo Automate script executed successfully!
exit /b 0
```


## Contribution
Contributions are welcome! If you have suggestions for improvements or additional features, feel free to open an issue or submit a pull request.
## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Instructions
- Replace `yourusername` with your actual GitHub username in the clone command.
- Adjust the paths in the automation scripts to point to your actual project directory.
- Save the content as `README.md` in your repository’s root directory.

---

### Resolve Pending Changes Before Merging
Ensure that all local changes are resolved and committed before merging to avoid conflicts. Run:

```bash
git add .
git commit -m "Resolve pending changes"
git pull origin main --rebase
```
