# Ansible Role: MySQL

## `This role create readonly user for MySQL DB`

Variables
---------

```
master_user= 
master_password=
child_user=
db_name=
cidr= 
```
`Note: pass above variables in ansible command`
### Example Command:-

```
ansible-playbook -i inventory playbook.yaml --extra-vars "master_user=root master_password=root@123 child_user=test db_name=test cidr=localhost"
```