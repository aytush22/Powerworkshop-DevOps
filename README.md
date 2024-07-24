# Powerworkshop-DevOps

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
![image](https://github.com/user-attachments/assets/bdb37a19-a9e8-4bd4-9fb8-29392f06379e)

##### 7. Edit Dockerfile
```bash
nano Dockerfile
![image](https://github.com/user-attachments/assets/ad6a0ce8-0a12-40e1-9829-55a192fee3ef)

##### 8. Log In to Docker Hub
```bash
sudo docker login
Provide username and password when prompted

##### 9. Build the Docker Image
```bash
sudo docker build -t ayush4910/php-hello-world .
![image](https://github.com/user-attachments/assets/3b8477f5-02f9-4611-add7-025ab13ae917)

##### 10. Push Docker Image to Docker Hub
```bash
sudo docker push ayush4910/php-hello-world
![image](https://github.com/user-attachments/assets/2fa85a60-73fa-4aaa-82b8-1bf0888f0598)
 
##### 11. Add docker-compose.yml
```bash
nano docker-compose.yml
![image](https://github.com/user-attachments/assets/3b8477f5-02f9-4611-add7-025ab13ae917)

##### 12. Add and Commit Changes
```bash
git add .
git commit -m "Add Docker and Docker Compose files"

##### 13. Update Remote Repository URL
```bash
git remote set-url origin https://github.com/aytush22/powerworkshop-DevOps.git

##### 14. Configure Git Pull Behavior
  Set Pull Rebase to False
  ```bash
  git config pull.rebase false

  Set Pull Fast-Forward Only
  ```bash
  git config pull.ff only

##### 15. Pull Changes from Remote
``` bash
git pull origin main --rebase

##### 16. Push Changes to Remote Repository
```bash
git push origin main

##### 17. Check for confirmation
```bash
ls
![image](https://github.com/user-attachments/assets/2e408814-e47d-4ca3-99a4-21ba1c2006a3)

 Ensure you use a personal access token instead of a password for GitHub authentication.










