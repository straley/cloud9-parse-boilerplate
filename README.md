cloud9-parse-boilerplate
========================

Boilerplate Setup for Cloud9 Parse Development With Express and EJS.

First, run:

    bash ./parse_installer.sh

It will:

* Fetch and install the latest version of the parse client application
* Create the parse config folder
* Upgrade Python to work with the Parse tools

The folder structure is fairly basic.  

    + cloud                 - The Parse Cloud Code application folder  
    | + views               - Views for Express  
    | | + hello.ejs         - A sample EJS page  
    | + app.js              - The Express dispatcher  
    | + main.js             - The Parse Cloud Code functions   
    + public                - Static files  
    | + favicon.ico         - A sample static file  
    + parse_installer.sh    - The installer tool for Cloud9  
    + README.md             - This file  
    + LICENSE               - The MIT open source license for this repo

After you run the installer the following files and folders will be created:

    + cloud  
    | + config              - The Parse Cloud Code CLI configuration folder  
    | | + global.json       - Your settings  
    | parse                 - The Express dispatcher  
    | + main.js             - The Parse Cloud Code CLI client  

