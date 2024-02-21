yum install nginx -y 


rm -rf /usr/share/nginx/html/* 

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

# some files need to be created here which is Reverse Proxy Configuration file which helps in conencting with internal server and we will add the dns records of the other serves to get the connection

# we need to copy the conf file of the frontend to the new file  /etc/nginx/default.d/roboshop.conf

cp roboshop.conf /etc/nginx/default.d/roboshop.conf 


systemctl enable nginx 
systemctl restart nginx 

# run the command bash frontend.sh it will give us the error as we requires the root acces so we use the sudo bash frontend.sh after the git pull

