pipeline {
    agent {
        docker {
            image 'node:18'   // You can change this to any version you need (e.g. node:20)
            args '-v $HOME/.npm:/root/.npm' // Optional: cache npm modules
        }
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/heet2604/bitespeed-backend-ci.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
