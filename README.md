### ssh into your vps with emailed credentials
ssh root@your_ip_address
pw: provided_in_email

### setup deployer
NOTE: This applies to Linux (Ubuntu 14.04)
useradd deployer `enter`     
passwd deployer `enter`    
deploy `enter`      
deploy `enter`

### setup ssh keys by copying local public key onto remote .ssh/authorized_keys file
NOTE: Not necessary if `add ssh keys` was available during server/droplet/node creation
remote: in roo/.ssh, `vim authorized_keys`       
local: copy id_rsa.pub (public key)       
remote: paste key into authorized_keys      
logout of remote       
log back into root - you should not be prompted for a password

### create local db
NOTE: Run this on both local and prod, sometimes the mysql2 adapter version needs to be held back due to edge-rails
NOTE: If `PID not found` error occurs, be sure to check local `/usr/local/var/mysql` and ensure *.pid filenames match the current user name.
local: bin/rake db:create

### if using basic ansible provisioner
-modify `telemark-ops/ansible/production`     
-modify `telemark-ops/ansible/group_vars/production`      
-modify `telemark-ops/ansible/group_vars/all`

## Provisioning
To provision a new server: cd ansible && `ansible-playbook -i production provision.yml`

##Deploying
To deploy the app: cd ansible && `ansible-playbook -i production deploy.yml`