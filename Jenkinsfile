pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID1')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY1')
    }
    
    stages {
         stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Bohdan-Kobliuk/test.git']]])        

          }
        }
         
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
        }
    }

   
}
