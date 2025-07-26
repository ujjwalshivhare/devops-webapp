pipeline {
    agent any

    environment {
        IMAGE_NAME = "ujjwalshivhare/devopsapp"  // Your DockerHub repo
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/ujjwalshivhare/Devops_end_to_end.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                    docker push $IMAGE_NAME
                    '''
                }
            }
        }
    }
}
