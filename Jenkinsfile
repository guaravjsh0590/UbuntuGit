pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
              echo 'Building..'
              hello()
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                add(1,3)
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
def hello()
{
def name= "Jenkins"
print "hello $name"
}
def add(def a,def b)
{
def c=a+b
print "sum of a+b is: $c"
}

