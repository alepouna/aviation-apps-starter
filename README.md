# aviation-apps-starter

Literally a powershell script I made to start aviation software because I can not be asked to click them all every time I restart the pc

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y1ACFQW)

# How to use

1. Create a folder somewhere on your computer and put all the shortcuts you wish to start there, in my case I have the following:
![(explorer)Aviation-Amhj4CZRcq](https://user-images.githubusercontent.com/98479040/169171769-73b75243-82b0-4c03-89ce-001236200b30.png)
2. Download the `launcher.ps1` and place it INSIDE the folder you created above.
3. Right click on the `launcher.ps1` click on "Send to" and then "Desktop (Create shortcut)" 
4. Right click on the shortcut you just made, click on "Properties", go to the "Shortcut" tab and change the "Target" to the following: 
`"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command "& PATH\launcher.ps1 production"`
Copy the path from the "Start in" field and paste it over the "PATH" word on previous step, so examlpe if your target is "E:\Aviation" your startup command will be: 
`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command "& E:\Aviation\launcher.ps1 production"`
5. Click Apply and then OK! 

## Make it look nicer

1. Download the `launcher.ico` file and place it on the same folder as the launcher app
2. Right click on the shortcut you made, click on "Properties", go to the "Shortcut" tab and click on "Change Icon".
3. Click "Browse" and locate the icon. 
4. Click Apply and then OK!

## Add/Remove programs

It's quite easy. Simple edit the program functions to add or remove programs. 
Functions that start apps will be labaled start with `LauncherStart-`. Fiddle with the code to see how to add more software.
Don't forget to edit the 'GUI'! 

# Feature requests, issues and contributions

Please do not create feature requests, issues or pull requests that request more software. I made this script with the software I use locally. If you want to add or remove software, please just add them to your local script.
If you need help with that, ask in my airline Discord. https://aegeanairva.com/ 
Thank you!
