pipeline {
    agent any
    stages {
        stage ('build docker image') {
            steps {
                sh '/usr/bin/docker image build -t shubhamchau/jenkinsdemo .'
            }
        }
        stage ('docker login') {
            steps {
                sh 'echo dckr_pat_3a6jflttElXRXFZGMK4pYLi2eK4 | /usr/bin/docker login -u shubhamchau --password-stdin'
            }
        }
        stage ('push docker image') {
            steps {
                sh '/usr/bin/docker image push shubhamchau/jenkinsdemo'
            }
        }
        stage ('reload docker service') {
            steps {
                sh '/usr/bin/docker service update --image <username>/jenkinsdemo --force myservice'
            }
        }

    }
}
