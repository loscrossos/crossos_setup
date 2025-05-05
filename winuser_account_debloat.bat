rem v1.0
rem initialize winget by updating it
winget update --silent  --accept-package-agreements  --accept-source-agreements --scope machine

rem ONE DRIVE
winget uninstall Microsoft.OneDrive --silent   --accept-source-agreements  
winget uninstall OneDrive --silent   --accept-source-agreements  

rem MS TEAMS. you can still use it from the
winget uninstall Microsoft.Teams
rem sticky notes
winget uninstall Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe --silent   --accept-source-agreements
rem power automate: needs email to run
winget uninstall Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe  --silent   --accept-source-agreements
rem MS camera
winget uninstall Microsoft.WindowsCamera_8wekyb3d8bbwe --silent   --accept-source-agreements
rem game speech window
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe --silent   --accept-source-agreements
rem clip champ movie editor.. needs email to run 
winget uninstall Clipchamp.Clipchamp_yxz26nhyzhsrt --silent   --accept-source-agreements
winget uninstall Microsoft.BingNews_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.BingSearch_8wekyb3d8bbwe  --silent   --accept-source-agreements
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.Copilot_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.GamingApp_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.GetHelp_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.StartExperiencesApp_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.Todos_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall Microsoft.YourPhone_8wekyb3d8bbwe --silent   --accept-source-agreements
winget uninstall MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe --silent   --accept-source-agreements


winget uninstall Microsoft.MicrosoftEdge.Stable_8wekyb3d8bbwe --silent   --accept-source-agreements

winget uninstall "Solitaire & Casual Games" --silent   --accept-source-agreements
winget uninstall "Outlook for Windows" --silent   --accept-source-agreements
winget uninstall "Widgets Platform Runtime" --silent   --accept-source-agreements

winget uninstall "Microsoft Teams Meeting Add-in for Microsoft Office" --silent   --accept-source-agreements
winget uninstall "Microsoft Edge WebView2 Runtime" --silent   --accept-source-agreements
winget uninstall "Microsoft Edge Update" --silent   --accept-source-agreements
winget uninstall "Microsoft Edge" --silent   --accept-source-agreements



winget uninstall "Microsoft Clipchamp" --silent   --accept-source-agreements
winget uninstall "Microsoft Teams" --silent   --accept-source-agreements
winget uninstall "Microsoft News" --silent   --accept-source-agreements
winget uninstall "Microsoft Bing" --silent   --accept-source-agreements
winget uninstall "MSN Weather" --silent   --accept-source-agreements
winget uninstall "Xbox" --silent   --accept-source-agreements
winget uninstall "Get Help" --silent   --accept-source-agreements
winget uninstall "Microsoft 365 Copilot" --silent   --accept-source-agreements
winget uninstall "Microsoft Sticky Notes" --silent   --accept-source-agreements
winget uninstall "Power Automate" --silent   --accept-source-agreements
winget uninstall "Microsoft To Do" --silent   --accept-source-agreements




winget uninstall "Paint" --silent   --accept-source-agreements
winget uninstall "Windows Web Experience Pack" --silent   --accept-source-agreements








rem this wil fail. deinstall afterwards
winget uninstall Microsoft.Edge --silent   --accept-source-agreements
: this is needed to stop windows to ask us to reinstall the gamebar
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR /f /t REG_DWORD /v "AppCaptureEnabled" /d 0
reg add HKEY_CURRENT_USER\System\GameConfigStore /f /t REG_DWORD /v "GameDVR_Enabled" /d 0




