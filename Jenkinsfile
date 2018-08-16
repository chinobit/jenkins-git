pipeline {
    agent any

    stages {
        stage('Ray: Say Hello to Ray') {
            steps {
                echo 'Hi Ray, How you Doing? After Merge'
            }
        }
        stage('Ray: SCM Checkout') {
            steps {
                git credentialsId: 'fedora-id-rsa', url: 'https://gitlab.com/chinobit/jenkins-git.git'
                echo 'Ray: GIT credentials have been checked.'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
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
