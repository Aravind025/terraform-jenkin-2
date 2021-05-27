pipeline {
    agent any
    
    tools {
        terraform 'terraform-15'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
               git branch: 'main', credentialsId: '63e372d6-a0a4-4b44-8931-afb96204ce2d', url: 'https://github.com/Aravind025/terraform-jenkin-2.git'
            }
        }
        stage ('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage ('Terraform Fmt') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage ('Terrafrom Plan') {
            steps {
                sh 'terraform plan '
            }
        }
        stage ('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
