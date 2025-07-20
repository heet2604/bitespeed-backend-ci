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
                sh 'npm test' // or comment this if you don’t have tests
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build' // or comment this if not needed
            }
        }
    }
}
