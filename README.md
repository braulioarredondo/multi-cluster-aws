
# multi-k8s

This project is an **AWS Cloudformation Deployment Demo** using EKS and the [multi-k8s](https://github.com/StephenGrider/multi-k8s) image by [Stephen Grider](https://www.linkedin.com/in/stephengrider/). The EKS application is a react application for a Fibionacci calculator. 


EKS cluster contains the following deployments and services: 

- **Server**
- **Client**
- **Worker**
- **Postgres DB**
- **Redis** 
- **Nginx Ingress**


![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)


## Arquitecture

Deployment uses the next instances types and sizes for the infrastructure.

| Resource |    Number     | Type/Size               |
| :-------- | :------- | :------------------------- |
| **VPC** | `1` | **/16** |
| **public subnet** | `2` | **/20** |
| **private subnet** | `2` | **/20** |
| **persistent subnet** | `2` | **/20** |
| **ec2** | `3` | **t3.small** |





## Deployment

Repo includes Github Actions to deploy the application using the provided Cloudformation template.

If you'll fork or use the Github Actions template please provide the following variables.

`DOCKER_USERNAME` (secret)

`DOCKER_PASSWORD` (secret)

`AWS_ACCESS_KEY_ID` (secret)

`AWS_SCRET_ACCESS_KEY` (secret)  

`PGPASSWORD`(secret)

Workflow builds and tests the docker images, create a cloudformation stack and finally deploy the application inside the EKS cluster. 

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)
## Cloudformation Designer

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)


## 🛠 Skills
Javascript, AWS, IAC, CloudFormation, Docker, EKS, K8s


## 🔗 Links
[![website](https://img.shields.io/badge/Braulio_Arredondo-black?style=for-the-badge&logo=read.cv)](https://katherineoelsner.com/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/braulio-arredondo)



## Authors

- [@braulioarredondo](https://www.github.com/braulioarredondo)

