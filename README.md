#  Cloud-Init EC2 Automation with Terraform

This project demonstrates how to use Terraform and cloud-init to provision and configure an EC2 instance automatically on AWS.  
The goal is to show how infrastructure provisioning (Terraform) and instance bootstrapping (cloud-init) can work together to create a repeatable and automated environment.

---

##  What is Cloud-Init?

Cloud-init is a widely used tool for initializing cloud instances during boot. It allows you to:  

- Install packages  
- Create users and groups  
- Configure SSH access  
- Run commands/scripts automatically at first boot  

In this project, cloud-init installs and configures Docker, ensuring that the EC2 instance is ready to run containers immediately after being provisioned with Terraform.

---

##  Features

- Automated provisioning of an EC2 instance with Terraform  
- Security group configured for HTTP and restricted SSH (only my IP) access  
- Bootstrapping EC2 using a cloud-init YAML configuration file  
- Docker automatically installed and started at first boot  
- Easy to replicate in any AWS account  

---

##  Security Notes

- Always store AWS credentials securely (use environment variables or AWS Vault)  
- Do not commit your `.tfvars` file with sensitive values  
- Restrict SSH access in the Securit

  ---

##  Future Improvements

Currently, cloud-init installs and starts Docker.  
Future enhancements could include:  

- Extending cloud-init to auto-deploy applications like:  
  - A WordPress container (accessible via the instance’s public IP)  
  - An NGINX container serving a static webpage  
- Adding outputs for deployed application URLs    

---

##  Learning Note

This project is part of my DevOps learning journey.  

It was both enjoyable and challenging, and it significantly deepened my understanding of Terraform, especially the use of tfvars for managing variables securely.  

The experience reinforced best practices around security, such as ensuring that AWS keys are not pushed to GitHub with the use of .gitignore.  

Additionally, I grew more comfortable with GitHub through uploading and managing this project.  

Overall, this project has made me stronger in my DevOps skills and more confident in my use of infrastructure as code.

