Ansible Role: Bloodymage.autonomy.ownca
===============

- [Description](#description)
- [Installation](#installation)
- [Requirements](#requirements)
- [Usage](#usage)
- [Role Variables](#role-variables)
- [Features and Advantages](#features-and-advantages)
- [Similar Projects](#similar-projects)
- [References](#references)
- [Contributing](#contributing)
- [License](#license)
- [Author Information](#author-information)

Description
-----------
Creates internal Certificate Authority

Installation
------------

### Requirements

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

### Dependencies
```
- role: bloodymage.autonomy.collection_handlers
```

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Usage
-----

### Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

### Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: bloodymage.autonomy.ownca, x: 42 }

Features and Advantages
-----------------------


Similar Projects
----------------

References
----------
- [PKI Tutorial](https://pki-tutorial.readthedocs.io)
- [Draft EDDSA PKI](https://tools.ietf.org/html/draft-moskowitz-eddsa-pki-00)
- [Running Your Own Ansible Driven CA](https://tikalk.com/posts/2016/10/30/Running-Your-Own-Ansible-Driven-CA)
- [Adding a new trusted Certificate Authority](https://blog.confirm.ch/adding-a-new-trusted-certificate-authority/)
- [Debops: Anisble PKI](https://www.github.com/debops/ansible-pki)

Contributing
------------
[Contributing](CONTRIBUTING.md)

License
-------
[MIT](LICENSE.md)

Author Information
------------------
G Derber
gd.github@bloodymage.org
