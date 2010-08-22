REQUIREMENTS

 - Mac OS X 10.4 or later on the client side
 - support for "cp -a" (hard links) on the server side for monthly snapshots
 - root privileges (required to backup system files, backup script could be
   modified to relax this requirement)
 - remote server with passwordless ssh access (NB! No encryption is performed
   by the backup script, so the remote server must be trusted!)


INSTALLATION AND USAGE

Either run the supplied ./install script or perform the following steps manually:
 1. Configure a passwordless ssh login to the backup server for root
 2. Copy the backup script to /usr/local/bin/
    $ sudo cp backup /usr/local/bin/
 3. Copy the excludes file to /var/root/
    $ sudo cp excludes /var/root/
 4. Edit launchd scripts (com.sudarkoff.backup.[daily|monthly].plist) to specify
    the host (-h) and the user name (-u) for your backup server
 5. Copy and register the launchd scripts
    $ sudo cp *.plist /Library/LaunchDaemons/
    $ sudo launchctl load /Library/LaunchDaemons/com.sudarkoff.backup.*.plist

The backup will run automatically daily at 4AM and on the first day of each month at 6AM.
