pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("surajkumar18/assignment-project:${env.BUILD_NUMBER}", ".")
                }
            }
        }
        
        stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'a496ff6d-67c9-4619-9dc8-a7563d4b900e') {
                        dockerImage.push()
                    }
                }
            }
        }
        
    }
}
