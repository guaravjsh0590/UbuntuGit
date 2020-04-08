pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
              echo 'Building..'
              helloworld();
                
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
