; Startup + icloud-keynote:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Keynote" '"$INSTDIR\iCloud Keynote.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-keynote" "" "URL:iCloud Keynote"
  WriteRegStr HKCU "Software\Classes\icloud-keynote" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-keynote\shell\open\command" "" '"$INSTDIR\iCloud Keynote.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Keynote"
  DeleteRegKey HKCU "Software\Classes\icloud-keynote"
!macroend
