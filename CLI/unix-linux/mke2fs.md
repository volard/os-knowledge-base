Creates a Linux filesystem inside a partition.

More information: https://manned.org/mke2fs.

# Usage

```bash
 - Create an ext2 filesystem in partition 1 of device b (sdb1):
   mkfs.ext2 {{/dev/sdb1}}

 - Same for ext3
   mkfs.ext3 {{/dev/sdb1}}

 - Create an ext4
   mkfs.ext4 {{/dev/sdb1}}
```