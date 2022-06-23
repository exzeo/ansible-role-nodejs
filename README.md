Ansible Role NodeJS
=========

Installs NodeJS on Debian/Ubuntu servers. 


Role Variables
--------------

```
# Set the version of Node.js to install ("12.x", "13.x", "14.x", "15.x", etc.).
# Version numbers from Nodesource: https://github.com/nodesource/distributions
nodejs_version: "16.x"

# Define a list of global packages to be installed with NPM.
npm_global_packages: []
#  # Install a specific version of a package.
#  - name: jslint
#    version: 0.9.3
#  # Install the latest stable release of a package.
#  - name: node-sass
#  # This shorthand syntax also works (same as previous example).
#  - node-sass

# Uninstall NVM and Nodejs
uninstall: false
```

Example Playbooks
----------------

Minimal:
```
- name: Install CLI
  hosts: all
  roles:
    - role: exzeo.nodejs
```

Specific Versions:
```
- name: Install
  hosts: all
  roles:
    - role: "exzeo.nodejs"
      vars:
        nodejs_version: "14.x"
```

Global NPM Modules:
```
- name: Install
  hosts: all
  roles:
    - role: "exzeo.nodejs"
      vars:
        npm_global_packages:
          - serverless
          - name: serverless
            version: 1.0.0
```

Uninstall:
```
- name: Install CLI
  hosts: all
  roles:
    - role: exzeo.nodejs
      vars:
        uninstall: true
```