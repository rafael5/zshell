
# Reference
# https://sourabhbajaj.com/mac-setup/

# CLI tools
# https://medium.com/macoclock/awesome-command-line-tools-for-the-mac-42d810dacf93


#-------------------------------------------------------------------------------------
# MAC SYSTEM
#-------------------------------------------------------------------------------------
# http://www.theinstructional.com/guides/a-closer-look-at-system-information

alias macsys-profile-report='echo "see profile report on desktop"; system_profiler -detailLevel mini -xml > ~/Desktop/system_profile_mini.spx '
alias macsys-profile-basic='system_profiler -detailLevel basic > sysprofile.md; code systemprofile.md '
alias macsys-prefs='open /Applications/System\ Preferences.app'
alias macsys-softwareupdate='softwareupdate'
alias macsys-cli-list=' ls /Library/Developer/CommandLineTools/usr/bin/'
alias macsys-DSStore-clean='echo "cleaning all .DS_Store files recursively"; sudo find . -name \.DS_Store -exec rm -v {} \;'

# diskutil
alias macdisk-info='diskutil info disk0'
alias macdisk-list='diskutil list'
# alias macdisk-smart-status='diskutil info disk0|grep SMART'


# TRIM
# > sudo trimforce enable
alias macdisk-trim-status='system_profiler SPSerialATADataType | grep "TRIM" '


# SMART
# https://apple.stackexchange.com/questions/135565/how-do-i-get-detailed-smart-disk-information-on-os-x-mavericks-or-later
# > brew install smartmontools
alias macdisk-smart-info='smartctl -a disk0'
alias macdisk-smart-status='system_profiler SPSerialATADataType | grep "S.M.A.R.T." '

# activate SMART on a drive:
# smartctl -s on -a disk0s2.

# Executes extended disk self-test
# smartctl -t long /dev/disk0

# Enables SMART on first disk
# smartctl --smart=on --saveauto=on /dev/rdisk0

# Prints Self-Test & Attribute errors
# smartctl --attributes --log=selftest --quietmode=errorsonly /dev/disk0
                                        




#-------------------------------------------------------------------------------------
# MAC APPS
#-------------------------------------------------------------------------------------
# https://www.wikihow.com/Open-Applications-Using-Terminal-on-Mac
# open -a AppName

alias mac-apps='echo "firefox office excel calc pfinder songbird cleanmymac"'
alias songbird='open -a /Applications/Songbird_193.app/Contents/MacOS/songbird'
alias firefox='open -a "Firefox"'
alias excel='open -a "Microsoft Excel"'
alias office='open -a "LibreOffice"'
alias calc='open -a /Applications/Numi.app/Contents/MacOS/Numi'
alias pfinder='open /Applications/Path\ Finder7.app'
alias cleanmymac='open -a /Applications/CleanMyMac\ 3.app/Contents/MacOS/CleanMyMac\ 3'




#-------------------------------------------------------------------------------------
# MAC-SYSTEM-MAINT
#-------------------------------------------------------------------------------------
alias mac-maint-info='echo "maint- status | periodic | all | DS_StoreClean " '
alias mac-maint-status='echo "periodic maintenance  last run:";  ls -al /var/log/*.out'
alias mac-maint-periodic='sudo periodic daily weekly monthly; echo "periodic maintenance done"; open  http://ss64.com/osx/'
alias mac-maint-all='maint-status; maint-periodic; echo "post-clean status"; maint-status'





