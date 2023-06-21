---
tags: definition
aliases: 
sources: https://documentation.suse.com/sles/12-SP4/html/SLES-all/cha-snapper.html, https://en.opensuse.org/openSUSE:Snapper_Tutorial
---

> CLI and [[YaST]] Filesystem snapshot management tool

More information: http://snapper.io/manpages/snapper.html.

Snapper allows creating and managing file system snapshots. 
File system snapshots allow keeping a copy of the state of a file system at a certain point of time. The standard setup of Snapper is designed to allow rolling back system changes. 
However, it's possible to use it to create on-disk backups of user data. 

# Requirements
As the basis for this functionality, Snapper uses the [[Brtfs]] file system on Linux that natively supports file system snapshots of [[subvolume|subvolumes]] or thinly-provisioned [[LVM]] volumes with an [[XFS]] or [[Ext4]] [[filesystem]].

# Snapshot types
Snapper makes certain separation between snapshots, but snapshots themselves do not differ in a technical sense.

> There is no mechanism to ensure data consistency when creating a snapshot. Whenever a file (for example, a database) is written at the same time as the snapshot is being created, it will result in a corrupted or partly written file.

## Timeline snapshots
Is created every hour. Old ones are automatically deleted. But by default, the first snapshot of the last ten days, months, and years are kept.

## Installation snapshots
Whenever packages are installed, a pair of snapshots is created
1. one before the installation - `Pre`
2. after the installation - `Post` 

In case an important system component (like kernel) update, the snapshot pair is marked as important (`important=yes`). 

Old are automatically deleted. But by default the last ten `important` and `regular` are kept.

Is handled by the `snapper-zypp-plugin`. An XML configuration file, `/etc/snapper/zypp-plugin.conf` defines, when to make snapshots.

## Administration Snapshots
Is created whenever administration the system with [[YaST]] happens. Snapshots here represent a pair in `Pre`-`Post` style and with autodeletion old instances last 10 is always kept.



# Usage

```bash
 - List snapshot configs:
   snapper list-configs

 - Create snapper config:
   snapper -c {{config}} create-config {{path/to/directory}}

 - Create a snapshot with a description:
   snapper -c {{config}} create -d "{{snapshot_description}}"

 - List snapshots for a config:
   snapper -c {{config}} list

 - Delete a snapshot:
   snapper -c {{config}} delete {{snapshot_number}}

 - Delete a range of snapshots:
   snapper -c {{config}} delete {{snapshot_X}}-{{snapshot_Y}}
```