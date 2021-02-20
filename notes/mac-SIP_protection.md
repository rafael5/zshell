# macOS system protection and management
https://developer.apple.com/documentation/security/disabling_and_enabling_system_integrity_protection


## filesystem corruption / data loss

To recover lost data on macOS High Sierra and above, you need to temporarily disable System Integrity Protection (SIP) feature
1. Recovery Mode
	restart Mac; hold <cmd>+R at time of booting;
2. Open terminal in Recovery Mode
	Utilities -> Terminal
3. > csrutil disable
4. Exit and reboot


=> When finished recovery, re-enable SIP!
1. same
2. same
3. > csrutil enable
4. same



