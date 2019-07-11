REM https://github.com/auriuki/jenkins-docker
REM   -u root - is needed to be able bind docker service with jenkins
REM -d - run as daemon, so you can detach console window
REM -p 8080:8080 and -p 50000:50000 - expose jenkins ports for main Jenkins and slave communication
REM E:/Docker/Jenkins - my created directory
REM -v /var/run/docker.sock:/var/run/docker.sock - mount/bid docker sockets
REM --name jenkins - alias for created container - e.g. to be able login docker machine easily
REM jenkinsci/blueocean - name of docker used to create Jenkins - released every time when new blue ocean is released


REM docker run ^
REM  -u root ^
REM   --rm ^
REM   -d ^
REM   -p 8080:8080 ^
REM   -p 50000:50000 ^
REM   -v "C:/Docker/Jenkins":/var/jenkins_home ^
REM   -v /var/run/docker.sock:/var/run/docker.sock ^
REM   --name jenkins ^
REM   jenkinsci/blueocean

REM cmd into the docker container - bash is not installed into the alvine image, use sh instead - shell?
REM docker exec -it <docker-container-name> sh 
REM docker stop <docker-container-name>
REM lists all running docker containers
REM docker ps
REM docker --help 


docker run ^
--rm ^
-u root ^
-p 8080:8080 ^
-p 50000:50000 ^
-d ^
-v jenkins-data:/var/jenkins_home ^
-v /var/run/docker.sock:/var/run/docker.sock ^
-v "C:/Docker/Jenkins":/home ^
--name jenkins-instance ^
jenkinsci/blueocean