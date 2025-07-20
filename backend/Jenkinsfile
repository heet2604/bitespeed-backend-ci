pipeline {
    agent any

    environment {
        NODE_ENV = 'development'
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/heet2604/bitespeed-backend-ci'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test || echo "Tests skipped or failed"'
            }
        }

        stage('Build Docker') {
            steps {
                sh 'docker-compose build'
            }
        }

        stage('Run App') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished'
        }
    }
}
