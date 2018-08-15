pipeline {
    agent any

    stages {
        stage('Say Hello to Ray') {
            steps {
                echo 'Hi Ray, How you Doing? This is the Test-branch'
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
