!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Keynote" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-keynote" "" "URL:iCloud Keynote"
  WriteRegStr HKCU "Software\Classes\icloud-keynote" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-keynote\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Keynote"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-keynote"
!macroend
