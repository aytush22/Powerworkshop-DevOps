# powerworkshop-DevOps

## Project Setup and Deployment Guide
First you need to install ubuntu in your windows and should have a github repository to push the codes and docker account to push images.

### Introduction

This guide provides step-by-step instructions for setting up Docker, building and pushing Docker images, configuring Git, and managing a repository.

#### Steps

##### 1. Update System Packages

```bash
sudo apt update

##### 2. Install docker 

```bash
sudo apt install docker.io

##### 3. Start and Enable Docker
```bash
sudo systemctl start docker
sudo systemctl enable docker

##### 4. Clone the Repository
```bash
git clone https://github.com/silarhi/php-hello-world.git

##### 5. Navigate to the Repository Directory
```bash
cd php-hello-world/

##### 6. Verify its content
```bash
ls
![image](https://github.com/user-attachments/assets/10beee92-83cd-45a3-8700-f91b56bedf1e)

##### 7. Edit Dockerfile
```bash
nano Dockerfile
![image](https://github.com/user-attachments/assets/ad1af495-5435-47ec-b544-685f22d0d647)

##### 8. Log In to Docker Hub
```bash
sudo docker login
Provide username and password when prompted

##### 9. Build the Docker Image
```bash
sudo docker build -t ayush4910/php-hello-world .
![image](https://github.com/user-attachments/assets/08a13e0f-d213-4ef0-aa51-0f12e9a7e77d)

##### 10. Push Docker Image to Docker Hub
```bash
sudo docker push ayush4910/php-hello-world
![image](https://github.com/user-attachments/assets/b8047bbc-bfff-4973-8a8d-c8b1f647d640)
 
##### 11. Push Docker Image to Docker Hub
```bash
sudo docker push ayush4910/php-hello-world

##### 12. Add docker-compose.yml
```bash
nano docker-compose.yml
![image](https://github.com/user-attachments/assets/4d38252c-2c80-420b-9026-f4195a4c9321)


##### 13. Add and Commit Changes
```bash
git add .
git commit -m "Add Docker and Docker Compose files"

##### 14. Update Remote Repository URL
```bash
git remote set-url origin https://github.com/aytush22/powerworkshop-DevOps.git

##### 15. Configure Git Pull Behavior
  Set Pull Rebase to False
  ```bash
  git config pull.rebase false

  Set Pull Fast-Forward Only
  ```bash
  git config pull.ff only

##### 16. Pull Changes from Remote
``` bash
git pull origin main --rebase

##### 17. Push Changes to Remote Repository
```bash
git push origin main

##### 18. Check for confirmation
```bash
ls
![image](https://github.com/user-attachments/assets/8491660d-e71f-4be5-b794-098988417ad2)

 Ensure you use a personal access token instead of a password for GitHub authentication.










