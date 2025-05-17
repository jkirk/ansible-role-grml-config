grml-config
===========

A simple role to deploy the awesome [Grml](https://grml.org) [configuration files](https://michael-prokop.at/blog/2007/12/22/make-console-work-comfortable/).

Requirements
------------

Role [base](https://github.com/jkirk/ansible-role-base) is recommended.
At least zsh, vim, screen and tmux should be installed.

Role Variables
--------------

* (mandatory) `username`: The user to deploy the basic grml-config files.
* (optional) `grmlconfig_groupname`: The (primary) group name of the grml-config files needs to be set, defaults to username.

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: site
  roles:
     - { role: grml-config, username: "root", grmlconfig_groupname: "sysadmin" }
     - { role: grml-config, username: "jane_doe", grmlconfig_groupname: "sysadmin" }
     - { role: grml-config, username: "john_doe", grmlconfig_groupname: "sysadmin" }
```

License
-------

MIT

Author Information
------------------

Darshaka Pathirana - https://synpro.solutions
