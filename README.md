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

Step 1: Run the Python script
python3 leecher.py

Step 2: Navigate to the project directory
cd path/to/your/project  # Change this to your actual path

Step 3: Add the sub folder to Git
git add sub

Step 4: Commit changes
git commit -m "Update V2Ray configuration files"

Step 5: Push changes to GitHub
git push origin main  # Change 'main' to your branch name if different
```


### Example Batch File (`automate.bat` for Windows)
```batch
@echo off

REM Step 1: Run the Python script
python3 leecher.py

REM Step 2: Navigate to the project directory
cd path\to\your\project  REM Change this to your actual path

REM Step 3: Add the sub folder to Git
git add sub

REM Step 4: Commit changes
git commit -m "Update V2Ray configuration files"

REM Step 5: Push changes to GitHub
git push origin main  REM Change 'main' to your branch name if different
```


## Contribution
Contributions are welcome! If you have suggestions for improvements or additional features, feel free to open an issue or submit a pull request.
## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
Instructions
Make sure to replace yourusername with your actual GitHub username in the clone command.
Adjust the paths in the automation scripts to point to your actual project directory.
Save the content as README.md in your repository’s root directory.
