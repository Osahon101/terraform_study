pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Osahon101/terraform_study.git'
            }
        }

        
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Fmt') {
            steps {
                script {
                    sh 'terraform fmt'
                }
            }
        }
            
        stage('Terraform Validate') {
            steps {
                script {
                    sh 'terraform validate'
                }
            } 
        } 
        
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    input 'Approve before Apply'
                    sh 'terraform apply --auto-approve'
                }
                
            }
        }
        
    
       stage('Terraform Destroy') {
            steps {
                script {
                    input 'Approve before Destroy'
                    sh 'terraform destroy --auto-approve'
                }
                
            }
        }
    }
}
