<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.sudarkoff.backup.daily</string>
	<key>LowPriorityIO</key>
	<true/>
	<key>ProgramArguments</key>
	<array>
		<string>/usr/local/bin/backup</string>
		<string>-h</string>
		<string>@@HOSTNAME@@</string>
		<string>-u</string>
		<string>@@USERNAME@@</string>
		<string>/Users</string>
		<string>/Library/Preferences</string>
		<string>/var/root</string>
	</array>
	<key>StartCalendarInterval</key>
	<dict>
		<key>Hour</key>
		<integer>4</integer>
	</dict>
	<key>UserName</key>
	<string>root</string>
</dict>
</plist>
