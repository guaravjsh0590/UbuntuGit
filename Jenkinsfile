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
sh '''
 echo "executing the commands in linux"
 pwd
 ls -lrt
 ps aux | grep -i jenkins
 '''
echo 'Building..'
osSearch()
echo "Build the project from ${buildParams.MainRepoURL} and Branch  ${buildParams.MainRepoBranch}"
hello()
}
}

stage('Test') {
steps {
echo "Running Test for BUILD ${env.BUILD_ID} on ${env.JENKINS_URL}"
echo 'Testing the addition function'
add(1,3)
}
}
stage('Deploy') {
steps {
echo "Deploying..The build no: ${env.BUILD_ID}"
}
}
}
 post {
        always{
            echo "checking for Build Errors********************************************"
            failJobError()
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
def osSearch()
{
if (System.properties['os.name'].toLowerCase().contains('linux')) {
println "it's Linux"
} else if (System.properties['os.name'].toLowerCase().contains('windows')) {
println "it's  Windows"
}else{ println "it can be Mac....."
}
}
def failJobError()
{

//activeJobs="/var/jenkins_home/jobs/_ToBeDeleted/zLib_Test/zlib-test/builds/${env.BUILD_NUMBER}"
def lines=new File("${env.JENKINS_HOME}/jobs/Pipeline/builds/${env.BUILD_ID}/log").readLines()
BUILD_STRING = "Fail"
println("=====================================================================")
println "*************Searching Job Name: 15.2.5.${env.BUILD_NUMBER} for Build Failure***********"
//println "================active job is: $filePath=========================="

 lines.each{ String line ->
    if (line =~ /$BUILD_STRING/) {
            println "error: $line"
        }
    }

println("=====================================================================")

}
