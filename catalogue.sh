dnf module disable nodejs -y
dnf module enable nodejs:18 -y

dnf install nodejs -y

useradd roboshop

mkdir /app 

curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip 
cd /app 
unzip /tmp/catalogue.zip

cd /app 
npm install 

cp catalogue.service /etc/systemd/system/catalogue.service

systemctl daemon-reload

systemctl enable catalogue 
systemctl start catalogue

cp mongodb.repo /etc/yum.repos.d/mongodb.repo

dnf install mongodb-org-shell -y

mongo --host MONGODB-SERVER-IPADDRESS </app/schema/catalogue.js