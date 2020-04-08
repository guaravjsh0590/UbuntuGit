pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                hello.groovy
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
