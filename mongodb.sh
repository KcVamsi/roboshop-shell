yum install mongodb-org -y 

cp mongodb.conf /etc/yum.repos.d/mongodb.repo

systemctl enable mongodb
systemctl start mongodb

# Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/mongod.repo