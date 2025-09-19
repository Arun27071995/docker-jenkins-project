pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'git@github.com:Arun27071995/docker-jenkins-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-docker-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d --name my-app-container -p 8080:80 my-docker-app'
            }
        }

        stage('Cleanup Old Containers') {
            steps {
                sh 'docker ps -a'
                sh 'docker stop my-app-container || true'
                sh 'docker rm my-app-container || true'
            }
        }
    }
}
