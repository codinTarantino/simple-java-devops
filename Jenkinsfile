pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/simple-java-devops.git'
            }
        }

        stage('Build') {
            steps {
                bat 'build.bat'
            }
        }

        stage('Test') {
            steps {
                bat 'runTests.bat'
            }
        }

        stage('Deploy') {
            steps {
                bat 'deploy.bat'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline executed successfully!'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
