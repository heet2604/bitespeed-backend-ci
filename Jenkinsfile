pipeline {
    agent any

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
                sh 'npm test'  // or 'npm run test' if defined in package.json
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
