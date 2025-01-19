---
title: "How to enable SSH for your git"
categories: [smalltips]
description: "Those 2 commands is all you need"
date: "2024-09-09"
# draft: true
---


# Generate SSH key
Assuming you have OpenSSH installed, either on Linux or MacOS.
Basically, that's all you need to set-up secure ssh connection to your Github/Gitlab/Bitbucket repositories:

```bash
cd ~/.ssh
ssh-keygen -t ed25519 -b 4096 -f MY_GITLAB # optional:  -C "MY@EMAIL.com" 
ssh-add MY_GITLAB  # this file is created in the same folder, along with MY_GITLAB.pub
```

Final step is to take public key stored in `~/.ssh/MY_GITLAB.pub` and paste it into Github/Gitlab/Bitbucket settings.


# Agent forwarding

Sometimes you're going to ssh into remote server and then run `git pull` which will ask you for your password.

To avoid that you can enable so-called agent forwarding:

```bash
ssh -A user@remote_server
```

In this connection mode, your local ssh key will be used to authenticate you on remote server, and `git clone` will just work there.

But, be aware of security implications. Good article on that topic is [here](https://smallstep.com/blog/ssh-agent-explained/).

Another good article is [here](https://rednafi.com/misc/ssh_saga/).