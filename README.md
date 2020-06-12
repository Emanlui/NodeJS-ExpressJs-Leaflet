# NodeJS-ExpressJS-Leaflet

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

This repo is an example of NodeJS, ExpressJS integration with leaflet and mysql. 

# Dependencies
  - The installation method is only for Windows, it is different with linux, but there should not be any trouble..
  - First we need MYSQL.
  The download link is: https://dev.mysql.com/downloads/installer/ 
  In my case i will use mysql-installer-community-8.0.20.0.msi. Let me know if there is problem with other versions

  - We also need NodeJS
  The download link is: https://nodejs.org/en/download/current/
  In my case i will use node-v12.18.0-x64. Also let me know if there is problem with other versions

  - Finally we need to install ExpressJS, just follow the next commands, you need to open it with powershell or cmd inside the project.
```sh
$ npm init
```
 - You can leave the default settings. Also these configurations are not necesary, the repo already did it.
```sh
$ npm install express --save
```

# How to run the program

 - Actually is pretty easy, just type the next command inside the directory of the project:
    
```sh
$ node main.js
```
# FAQ
---
Error:

code: 'ER_NOT_SUPPORTED_AUTH_MODE',
  errno: 1251,
  sqlMessage: 'Client does not support authentication protocol requested by server; consider upgrading MySQL client',
  sqlState: '08004',
  fatal: true
  
Solution

Inside the mysql workbench write the following command:
```sh
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '12345'
```
Reference
https://stackoverflow.com/questions/50093144/mysql-8-0-client-does-not-support-authentication-protocol-requested-by-server

---
