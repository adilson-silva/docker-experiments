FROM centos   
 
COPY mongodb.repo /etc/yum.repos.d/   
RUN yum install -y mongodb-org-server  
RUN mkdir -p /data/db            
 
ENTRYPOINT [ "mongod" ]         

