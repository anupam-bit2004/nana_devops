What is terraform:

1. Automates and manage you infrastructure
2. open source and declarative (define WHAT end result you want)
3. Helps in provisioning infrastructure

Terraform architecture:
1. Has 2 main components - "core" and "providers"
2. Core uses 2 input sources --> config file , terraform state
3. Core --> based on input sources decides what needs to be created / updated and destroyed

Declarative vs Imperative:

  Declarative:-
  
  - provide the state which you desire in config
  - dont add new instructions
  - adjust the values in old config file and rerun it
  - its like saying "I need 7 servers with a firewall, do what needs to be done - figure out yourself" 
  

  Imperative:-
  
  - give clear cut insrtuctions what exactly user need
  - user have to perform calculations on their own , and state the same in config file


Installation :
(if installing in AWS ubuntu)

 - sudo apt update && sudo apt install -y gnupg software-properties-common curl
 - curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
 - echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
 - sudo apt update
 - sudo apt install -y terraform
 - terraform version

Providers:
 - Helps terraform to connect with differnt cloud platforms
