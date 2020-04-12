FROM artifactory.otxlab.net/bpdockerhub/da/centos/stateless/dastateless:20.2.0000.0051

#To Validate the Documentum setup is completed , then execute the DA deployment.
#Refer https://docs.docker.com/compose/startup-order/
RUN wget -P /tmp https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh


RUN chmod 777 /tmp/wait-for-it.sh

#Timeout settings  is set to 20 Minutes . It should be changed based on the time taken foe your environment.
CMD ["/tmp/wait-for-it.sh", "dctmcs20:9080", "--timeout=1200 ", "--strict", "--", "/bin/bash", "/opt/da_build/start.sh"]

#CMD [ "/bin/bash", "/opt/da_build/start.sh"]