pipeline{
    agent any
    stages{
        stage("check code from git hub"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rajkumar167/jenkinstest']])

            }

        }
        stage("build docker image"){
            steps{
                script{
                    sh "docker build -t  rajkumar167/rajdocker:v2 ."

                }
                
            }
        }

        stage("push image on docker hub"){
            steps{
                script{
                    withCredentials([string(credentialsId: 'hub', variable: 'csdocker')]){
                    sh "docker login -u rajkumar167 -p ${csdocker}"
                    sh "docker push rajkumar167/rajdocker:v2"
                    }
             
                }
            }
        }

    }
}
