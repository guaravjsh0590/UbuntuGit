pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
              echo 'Building..'
              hello();
                
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
def helloworld()
{
def name= "Jenkins"
print "hello $name"
}

