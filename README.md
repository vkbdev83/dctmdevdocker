# dctmdevdocker
Setup of the Documentum 20.2 using Docker Desktop for Mac/Windows

Pre-requisite

1. Docker Desktop for Mac/WIndows 
2 .Opentext Support Access

Installation Steps

  1. Download the dctm_server_20.2_centos.tar and documentum_administrator_20.2_docker_centos.tar from the OpenText Download portal.
  
  2.  Validate the Docker is running using below command
  
    CMD > docker version
  
  3. Untar the downloaed tar files and Load both the Docker Images into the Local Repo using the below command
  
      CMD > docker load -i Contentserver_Centos.tar
      
      CMD > docker load -i DA_20.2.0000.0051.tar 
      
   4. Validate whether the images are loaded successfully using below commands and expect similar output
   
    CMD >docker images
    
    
REPOSITORY                                                           TAG                 IMAGE ID            CREATED             SIZE

artifactory.otxlab.net/bpdockerhub/da/centos/stateless/dastateless   20.2.0000.0051      bfc4f4c3c1b9        3 weeks ago         1.42GB
contentserver/centos/stateless/cs                                    20.2.0000.0110      f83cfb099daf        3 weeks ago         3.48GB
vishnukumarsmbp:DctmDocker vishshob$ 


     5. Compose file is created to orchestrate the DB/Content Server/DA in the right order , this makes our life very easier.
     
        i. Checkout this GIT project.
        ii. Navigate to the corresponding checkout directory in a Terminal
        iii. Execute the below command
              CMD >  ./Install_Documentum.sh
              
        iv. This normally takes 15 - 20 minutes .Documentum Content Server process takes moost of the time , 
        approx 15 minutes
        v. Monitor the Content Server setup process using the below logs in the Content Server Container.
        
            /opt/dctm_docker/logs/dctmcs20.log
            $DM_HOME/install/logs/install.log
            
        vi . If there are no errors , Launch the DA
              http://localhost:8080/da
              
              
 Note . All the Documentum credentials and details are either in Install_Documentum.sh and documentum_setup_compose.yml .
 
 Also refer Opentext Documentum Cloud deployment guide for additional info.
 
 Additional useful commands are available in "Useful Commands" file.
        
        
              
  


