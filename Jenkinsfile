pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                // Corrected the repository URL and ensured 'branch' syntax is accurate
                git branch: 'main', url: 'https://github.com/your-repo/java-project.git'
            }
        }
        stage('Build') {
            steps {
                // Runs Maven clean and package commands
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Runs Maven tests
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                // Packages the application
                sh 'mvn package'
            }
        }
        stage('Docker Build & Push') {
            steps {
                // Corrected the Docker repository URL format
                sh 'docker build -t sunestech/java-app:latest .'
                sh 'docker push sunestech/java-app:latest'
            }
        }
    }
}
