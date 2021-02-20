
# VIRTUALBOX
#-------------------------------------------------------------------------------------
# bug starting Virtualbox without first starting the vbox kernel
# http://superuser.com/questions/733367/virtualbox-odd-behaviour-after-updating-the-host-to-os-x-mavericks
# http://nakkaya.com/2012/08/30/create-manage-virtualBox-vms-from-the-command-line/
# https://www.techrepublic.com/article/how-to-run-virtualbox-virtual-machines-from-the-command-line/


alias vbox-info='echo "vbox-start | vbm  -cmd  -list -state -startvm -compact"'
alias vbox-start='sudo /Library/Application\ Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh restart'

alias vbm='VBoxManage'
alias vbm-cmd='echo "vbm: list {vms | runningvms}  | startvm <id> | controlvm <id> {pause | resume | poweroff} | "'
alias vbm-list='echo "RUNNING VMs:";  vbm list runningvms; echo "---- AVAILABLE VMs: ----"; vbm list vms; echo "---- START or CONTROL VM ---"; echo "vbm startvm <id> or controlvm <id> {pause | resume | poweroff}" ' 
alias vbm-state=' vbm list vms -l | grep -e ^Name: -e ^State | sed s/\ \ //g | cut -d: -f2- '
alias vbm-compact='echo "vbm modifyhd --compact <id.vdi> " '
alias vbm-startvm='echo "vbm startvm <id> "'

