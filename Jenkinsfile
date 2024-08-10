pipeline {
    agent any

    environment {
        TERRAFORM_VERSION = '1.3.10' // Adjust to your Terraform version
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], userRemoteConfigs: [[credentialsId: 'github-ssh-key', url: 'https://github.com/ashnageorge98/IaaCTerraform.git']])
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/*.tf', allowEmptyArchive: true
            cleanWs()
        }
    }
}
