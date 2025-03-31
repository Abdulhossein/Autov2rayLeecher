#!/bin/bash
   # Step 1: Navigate to the project directory
   cd /home/abdulhossein/tgv2ray/Autov2rayLeecher/  # Change this to your actual path
   # Step 2: Run the Python script
   python3 leecher.py
   # Step 3: Add the sub folder to Git
   git add sub
   # Step 4: Commit changes
   git commit -m "Update V2Ray configuration files"
   # Step 5: Push changes to GitHub
   git push origin main  # Change 'main' to your branch name if different