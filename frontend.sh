yum install nginx -y 


rm -rf /usr/share/nginx/html/* 

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

# some files need to be created here which is Reverse Proxy Configuration which helps in conencting with internal server and we will add the dns records of the other serves to get the connection

systemctl enable nginx 
systemctl restart nginx 