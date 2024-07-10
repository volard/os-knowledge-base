---
tags:
  - review
aliases:
  - Secure Copy Protocol
sources:
---
> Secure Copy Protocol

Old deprecated simple and secure file transfer protocol for transferring files.

Unlike [[SSH File Transfer Protocol|SFTP]], SCP has fewer commands and is used primarily to copy files between a local host and a remote host or between two remote hosts. SCP is unable to create or list directories or delete files like [[SSH File Transfer Protocol|SFTP]]. Because of this focus on copying files, in some instances, SCP has faster transfer speeds which can give it an advantage when speed is critical.