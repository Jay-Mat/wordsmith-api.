pipeline {
    agent any

    triggers {
        pollSCM '* * * * *'
    }
     
    tools{
        maven 'Maven'
    }

    environment {
        CI = false //do not treat errors as warnings

    }

    stages {
        stage('Maven Build') {
            steps {
             sh 'mvn clean install'
            }  
        }

        stage('Deployment') {
            steps {
                sh 'docker build -t wordsmith-api:${BUILD_NUMBER} .'
                sh 'docker login -u jaymath237 -p Jstorm237 docker.io'
                sh 'docker tag wordsmith-api:${BUILD_NUMBER} jaymath237/wordsmith-api-project'
                sh 'docker push  jaymath237/wordsmith-api-project'
            }
        }

}
}