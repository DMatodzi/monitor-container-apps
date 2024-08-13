cd "C:\Users\Dzang\OneDrive\Documentos\CyberSafe Foundation - Cybersecurity\Soft Skills; Week 4 to 8 - Group Project\monitor-container-apps\docker-registry-setup"
nano config.yml
nano generate_htpasswd.py
python generate_htpasswd.py #Generating the htpasswd file
docker run -d -p 5000:5000 --name privreg -v "$(pwd)/config.yml:/etc/
docker/registry/config.yml" -v "$(pwd)/auth:/auth" registry:2  #Running the privreg container on port 5000
#Setting up Sonarqube and postgresql
docker run -d --name sonar-postgres --network sonarnet -p 5432:5432 -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -e POSTGRES_DB=sonar postgres:latest
docker run -d --name sonar-postgres --network sonarnet -p 5432:5432 -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -e POSTGRES_DB=sonar postgres:latest
docker run -d --name sonarqube --network sonarnet -p 9000:9000 -e SONAR_JDBC_URL=jdbc:postgresql://sonar-postgres/sonar -e SONAR_JDBC_USERNAME=sonar -e SONAR_JDBC_PASSWORD=sonar sonarqube:latest
#Creating necessary files and their folders
nano dockerfile
nano requirements.txt
nano app.py
#Building flask app docker image
docker build -t my-flask-app .
docker run -d -p 6000:5000 --name my-flask-app-container my-flask-app
#Logging into docker
docker login localhost:5000
#Pushing images into the private registry
docker tag pic1:secure localhost:5000/pic1:secure
docker build -t pic1:secure .
docker tag pic1:secure localhost:5000/pic1:secure
docker push localhost:5000/pic1:secure
curl -X GET http://localhost:5000/v2/_catalog #Checking if image is available in registry
docker ps #Checking which containers are running
#Testing if flask is running
curl http://localhost:6000/
curl http://localhost:6000/data
#Verifying Docker registry
curl -X GET http://localhost:5000/v2/_catalog
curl -X GET http://localhost:5000/v2/<image_name>/tags/list
curl -X GET http://localhost:5000/v2/pic1/tags/list
#Setting up SonarQube on port 9000 by creating the necessary files and dependencies needed
cd "C:\Users\Dzang\OneDrive\Documentos\CyberSafe Foundation - Cybersecurity\Soft Skills; Week 4 to 8 - Group Project\monitor-container-apps\docker-registry-setup"
cd "C:\Users\Dzang\OneDrive\Documentos\CyberSafe Foundation - Cybersecurity\Soft Skills; Week 4 to 8 - Group Project\monitor-container-apps\docker-registry-setup"
#Simulating the malicious activity by building the malicious docker file then pushing the images to the local hos
nano dockerfile.malicious 
nano dockerfile.malicious
docker build -t pic2:malicious -f Dockerfile.malicious .
docker build -t pic2:malicious -f dockerfile.malicious .
docker tag pic2:malicious localhost:5000/pic1:secure #tagging the malicious image to replace the legitimate one
docker push localhost:5000/pic1:secure #pushing the malicious image to the private registry
docker push localhost:5000/pic1:secure #pushing the malicious image to the private registry
docker run -d -p 6000:5000 --name my-malicious-app-container localhost:5000/pic1:secure  #Running the malicious container 
docker ps
#Setting up traffic monitoring using wireshark
sudo apt-get update
cd "C:\Users\Dzang\OneDrive\Documentos\CyberSafe Foundation - Cybersecurity\Soft Skills; Week 4 to 8 - Group Project\monitor-container-apps\docker-registry-setup"
nano docker-compose.yml
#Putting the docjer-compose.yml file in the correct directory
#Building and pushing docker images
docker build -t pic2:malicious -f Dockerfile.malicious .
docker build -t pic2:malicious -f dockerfile.malicious .
docker tag pic1:secure localhost:5000/pic1:secure  #Tag secure image and push it
docker push localhost:5000/pic1:secure 
docker tag pic2:malicious localhost:5000/pic2:malicious  #tagging and pushing malicious image
docker push localhost:5000/pic2:malicious 
docker rmi localhost:5000/pic2:malicious #deleting malicious image locally
docker push localhost:5000/pic1:secure #pushing the secure image agin
#Running docker containers
docker-compose up -d
#Fix errors on Owasp-zap image
#Setting up Owasp zap for DAST Scanning
docker run -u zap -p 8080:8080 -i owasp/zap2docker-stable zap-webswing.sh
docker-compose up -d
