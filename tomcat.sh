yum install java-121-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.55/bin/apache-tomcat-10.1.55.tar.gz
tar -zxvf apache-tomcat-10.1.55.tar.gz
sed -i '55  a\<role rolename="manager-gui"/>' apache-tomcat-10.1.55/conf/tomcat-users.xml
sed -i '56  a\<role rolename="manager-script"/>' apache-tomcat-10.1.55/conf/tomcat-users.xml
sed -i '57  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-10.1.55/conf/tomcat-users.xml
sed -i '58  a\</tomcat-users>' apache-tomcat-10.1.55/conf/tomcat-users.xml
sed -i '55d' apache-tomcat-10.1.55/conf/tomcat-users.xml
sed -i '24d' apache-tomcat-10.1.55/webapps/manager/META-INF/context.xml
sed -i '25d'  apache-tomcat-10.1.55/webapps/manager/META-INF/context.xml
sh apache-tomcat-10.1.55/bin/startup.sh
