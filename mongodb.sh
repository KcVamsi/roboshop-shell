yum install mongodb-org -y 

cp mongodb.conf /etc/yum.repos.d/mongo.repo

systemctl enable mongod 
systemctl start mongod 

# Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/mongod.conf