#by https://github.com/auroraisluna - https://github.com/auroraisluna/aviation-apps-starte

write-host " "
write-host " "
write-host "                           A V I A T I O N     S O F T W A R E    L A U N C H E R "
write-host " "
write-host " "
write-host " Please pick an option:"
write-host "  "
write-host "  "
write-host "    -- Launchers --"
write-host "  "
write-host "  SA - Launch everything (installers, tools, trackers, fbw tools)"
write-host "  S1 - Launch installer apps (Navdata, FBW)"
write-host "  S2 - Launch tools (simlink, spad)"
write-host "  S3 - Launch trackers (LRM, Volanta)"
write-host "  S4 - Launch flybywire tools"
write-host "  S5 - Launch com tools (choose)"
write-host "  SM - Launch MSFS"
write-host "  "
write-host "    -- Folders --"
write-host "  "
write-host "  FA - Open app folder"
write-host "  FC - Open MSFS community folder"
write-host "  "
write-host "    -- Other --"
write-host "  "
write-host "  OF - Fix flybywire MCDU server shortcut"
write-host "  OX - Kill apps (and msfs!)"
write-host "  "
write-host "  "
# Fetch option
$launchermode = Read-Host -Prompt " -> Select on of the above or type EXIT to kill this program"

# Exit option
if ($launchermode -match "exit") {
	exit
}

### Functions
function LauncherStart-Tools {
	start ".\Navigraph Simlink.lnk"
	start ".\SPAD.neXt.lnk"
}

function LauncherStart-Trackers {
	start  ".\Volanta.lnk"
	start ".\Landing Rate Monitor.lnk"
}

function LauncherStart-Installers {
	start ".\Navigraph Navdata Center.lnk"
	start ".\FlyByWire Installer.lnk"
}

function LauncherStart-Flybywire {
	start ".\FBW A320 MCDU Server.lnk"
}

function LauncherStart-Game {
	start ".\Microsoft Flight Simulator.url"
}

function LauncherStart-Coms {
	Clear-Host
	write-host "  "
	write-host "  "
	write-host "  "
	write-host "  0 - None"
	write-host "  1 - vPilot (VATSIM)"
	write-host "  2 - POSCON"
	write-host "  "
	write-host "  "
	$commode = Read-Host -Prompt " -> Select 0, 1 or 2"
	
	if ($commode -match "1") {
		start ".\vPilot.lnk"
	}	
	
	if ($commode -match "2") {
		start ".\POSCON Launcher.lnk"
	}
}

### Option handler
#Yes I did this with just IF because it looks nicer when coding it :p 
if ($launchermode -match "SA") {
	
	# Prompt for coms
	LauncherStart-Coms
	
	# Prompt for msfs
	$startmsfs = Read-Host -Prompt "Start MSFS? Y/N"
	
	# Hide
	powershell -window Hidden -command "'Hiding window'"
	
	###Start things
	LauncherStart-Tools
	LauncherStart-Trackers
	LauncherStart-Installers
	LauncherStart-Flybywire
	

	# Start MSFS?
	if ($startmsfs -match "Y") {
		LauncherStart-Game	
	}

	exit
} 

if ($launchermode -match "S1") {
	
	LauncherStart-Installers
	exit
	
} 

if ($launchermode -match "S2") {
	
	LauncherStart-Tools
	exit
	
} 

if ($launchermode -match "S3") {
	
	powershell -window Hidden -command "'Hiding window'"
	LauncherStart-Trackers
	exit
	
} 

if ($launchermode -match "S4") {
	
	LauncherStart-FlyByWire
	exit
	
} 

if ($launchermode -match "S5") {
	
	LauncherStart-Coms
	exit
	
} 

if ($launchermode -match "SM") {
	
	LauncherStart-Game
	exit
	
} 

if ($launchermode -match "FA") {
	
	ii "E:\Aviation"
	exit
	
} 

if ($launchermode -match "FC") {
	
	ii "F:\MSFS\Community"
	exit
	
} 

if ($launchermode -match "OF") {
	
	# Check if mcdu server is named 'server.exe' 
	$mcduServerPath = "F:\MSFS\Community\flybywire-aircraft-a320-neo\MCDU SERVER\server.exe"
	$isNamedServer = Test-Path -Path $mcduServerPath -PathType Leaf
	if ($isNamedServer -eq $true) {
		# Rename
		Rename-Item -Path $mcduServerPath -NewName "FBW_MCDU_SERVER.exe"
	}
	exit
	
} 

if ($launchermode -match "OX") {
	
	#Kill msfs
	taskkill /IM "FlightSimulator.exe" /F
	
	#Find apps
	taskkill /IM "Navigraph Navdata Center.exe" /F
	taskkill /IM "NavigraphSimlink.exe" /F
	taskkill /IM "SPAD.neXt.exe" /F
	taskkill /IM "Volanta.exe" /F
	taskkill /IM "LRM.exe" /F
	taskkill /IM "FlyByWire Installer.exe" /F
	taskkill /IM "FBW_MCDU_SERVER.exe" /F
	
	Timeout /T 5
	
	exit
	
	
} 

# Final exit
exit
