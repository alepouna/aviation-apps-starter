## ⚠️⚠️⚠️ As of 29/02/2024 this repo has been moved to GitLab at https://gitlab.com/alepouna.dev/aviation-apps-starter

# aviation-apps-starter

Literally a powershell script I made to start aviation software because I can not be asked to click them all every time I restart the pc.
It also contains a script that will rename the FlyByWire MCDU server file to an appropriate file name (so it can be found in task manager)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y1ACFQW)

# How to use with the installer (v1.0.4 and onwards)
1. Download the Setup.exe file from the latest release. The installer will setup the folders and shortcuts as you prefer.
2. Run the app and type `FA` and hit enter. 
3. Copy all the shortcuts you want the program to run and paste them inside the folder the app opened. 
4. Edit the launcher.ps1 with **Notepad++** or the **Windows PowerShell ISE** (recommended) to ensure the shortcuts you just pasted will match what the application will start.
5. Double click the `start.bat` or the shortcuts you have created to run the app! 

# How to use without an installer (manually setup the program)

1. Create a folder somewhere on your computer and put all the shortcuts you wish to start there, in my case I have the following:
![(explorer)Aviation-Amhj4CZRcq](https://user-images.githubusercontent.com/98479040/169171769-73b75243-82b0-4c03-89ce-001236200b30.png)
2. Download the `launcher.ps1` and place it INSIDE the folder you created above.
3. Right click on the `launcher.ps1` click on "Send to" and then "Desktop (Create shortcut)" 
4. Right click on the shortcut you just made, click on "Properties", go to the "Shortcut" tab and change the "Target" to the following: 
`"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command "& PATH\launcher.ps1 production"`
Copy the path from the "Start in" field and paste it over the "PATH" word on previous step, so examlpe if your target is "E:\Aviation" your startup command will be: 
`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command "& E:\Aviation\launcher.ps1 production"`
5. Click Apply and then OK! 
6. Download the `launcher.ico` file and place it on the same folder as the launcher app
7. Right click on the shortcut you made, click on "Properties", go to the "Shortcut" tab and click on "Change Icon".
8. Click "Browse" and locate the icon. 
9. Click Apply and then OK!

# Add/Remove programs

It's quite easy. Simple edit the program functions to add or remove programs. 
Functions that start apps will be labaled start with `LauncherStart-`. Fiddle with the code to see how to add more software.
Don't forget to edit the 'GUI'! 

# Feature requests, issues and contributions

Please do not create feature requests, issues or pull requests that request more software. I made this script with the software I use locally. If you want to add or remove software, please just add them to your local script.
If you need help with that, ask in my airline Discord. https://aegeanairva.com/ 
Thank you!

# Fix "launcher.ps1 cannot be loaded because running scripts is disabled on this system"
Please note that when using the installer this option is automatically set, if not:
1. Open an **ADMIN** Power Shell prompt 
2. Run `Set-ExecutionPolicy Unrestricted`
3. Press A
Done! Please note that this allows all PS1 scripts to be executed and can be unsafe.
