pipeline {
    agent any

    stages {
        stage('Ray: Say Hello to Ray') {
            steps {
                echo 'Hi Ray, How you Doing? First echo before SCM checkout'
            }
        }
        // workaround to check out the Jenkinsfile of the tag because parameters are not replaced
        // when using the "Pipeline script from SCM" option
        stage ('Load Jenkinsfile From SCM')
        checkout poll:false, scm: [
          $class: 'GitSCM',
          branches: [[name: "origin/pr/${pullRequestId}/from"]],
          userRemoteConfigs: [[
            url: "ssh://git@gitlab.com:chinobit/${destinationRepositoryOwner}/${destinationRepositoryName}.git",
                        credentialsId: 'fedora-id-rsa', 
            refspec: '+refs/pull-requests/*:refs/remotes/origin/pr/*'
          ]]
        ]
        load 'Jenkinsfile'
//        stage('Ray: SCM Checkout') {
//            steps {
//                git credentialsId: 'fedora-id-rsa', url: 'git@gitlab.com:chinobit/jenkins-git.git'
//                echo 'Ray: GIT credentials have been checked.'
//            }
//        }
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
