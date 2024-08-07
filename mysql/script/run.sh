## Pass Username and Password

username={{ username }}
pass="$(openssl rand -base64 12)"
db_name={{ db_name }}
cidr={{ cidr }}


## Root user Details for login as master

user=root
password=root@123

## Here Script

echo $pass
mysql -u ${user} -p${password} -e "CREATE USER '${username}'@'${cidr}' IDENTIFIED BY '${pass}';"
mysql -u ${user} -p${password} -e "GRANT SELECT ON ${db_name}.* TO '${username}'@'${cidr}';"
mysql -u ${user} -p${password} -e "FLUSH PRIVILEGES;"



CREATE USER 'health_lms_config_user'@'172.50.%' IDENTIFIED BY 'rgZ3PY88f5';

GRANT ALL ON `health_lms_configuration`.* TO 'health_lms_config_user'@'172.50.%';

FLUSH PRIVILEGES;