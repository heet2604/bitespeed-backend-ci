pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                echo 'Cloning...'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('bitespeed-app', 'backend')
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    docker.image('bitespeed-app').run('-p 3001:3001')
                }
            }
        }
    }
}
