Map buildParams = [  
                    NodeToRun                   : "master",
                    MainRepoURL                 : "https://github.com/guaravjsh0590/UbuntuGit.git",
                    MainRepoBranch              : "master",
                    ] as HashMap

pipeline {
    agent
       {
      node {
            label "${buildParams.NodeToRun}"
        }
      }

    stages {
        stage('Build') {
            steps {
              echo 'Building..'
              echo "Build the project from ${buildParams.MainRepoURL} and Branch  ${buildParams.MainRepoBranch}"
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

