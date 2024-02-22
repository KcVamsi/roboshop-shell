curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

useradd roboshop

mkdir /app 

curl -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip 
cd /app 
unzip /tmp/user.zip

npm install 

cp user.service /etc/systemd/system/user.service

systemctl daemon-reload

systemctl enable user 
systemctl start user

cp mongodb.repo /etc/yum.repos.d/mongodb.repo

dnf install mongodb-org-shell -y

mongo --host mongodb.kcdevopsdomain.online </app/schema/user.js