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
osSearch()
echo "Build the project from ${buildParams.MainRepoURL} and Branch  ${buildParams.MainRepoBranch}"
hello()
}
}

stage('Test') {
steps {
echo "Running Test for  ${env.BUILD_ID} on ${env.JENKINS_URL}"
echo 'Testing..'
add(1,3)
}
}
stage('Deploy') {
steps {
echo 'Deploying..The build no: $BUILD_NUMBER'
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
def osSearch()
{
if (System.properties['os.name'].toLowerCase().contains('windows')) {
println "it's Windows"
} else {
println "it's not Windows"

}
}
