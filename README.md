ESXi Auto Shutdown Script v1.0
==============================

This script can be used to help shut down virtual machines, for example, in the case of a power outage.

Deploy the two scripts on an ESXi 5.1 (or greater) attached datastore.  The scripts are known to work up to ESXi 5.5, and may work on future versions also.  Make sure they are executable (chmod +x) by the user who will be running the script.

By default, the script tries to shut down all guest VMs automatically, and waits 20 times for a duration of 10 seconds each time for each VM to shut down.  These settings are customizable in the script.

If a guest VM doesn't shut down cleanly, it is forcefully powered off.  You could change this, for example, and make it suspend instead of a forceful shutdown (vmsvc/power.suspend) - it's up to you.

The script can be run via SSH, and the virtual machines you specify (as well as the virtual host) will be shutdown using best effort.
