grml-config
===========

A simple role to deploy the awesome Grml configuration files.

Requirements
------------

None.

Role Variables
--------------

* `username`: The user to deploy the basic grml-config files.

Dependencies
------------

None.

Example Playbook
----------------

```
    - hosts: site
      roles:
         - { role: grml-config, username: "jane_doe" }
         - { role: grml-config, username: "john_doe" }
```

License
-------

MIT

Author Information
------------------

Darshaka Pathirana
