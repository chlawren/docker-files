pipeline {
    agent none
    stages {
        stage('base') {
            agent {
              dockerfile {
              filename 'Dockerfile'
              dir 'alpine'
              label 'alpine:base'
              additionalBuildArgs  '-t applbase:alpine'
        }
            steps {
                sh 'uname -a'
            }
        }
        stage('nginx') {
            agent {
              dockerfile {
              filename 'Dockerfile'
              dir 'nginx'
              label 'nginx:'
              additionalBuildArgs  '-t nginx:0.1'
        }

            steps {
                sh 'docker/nginx/run-container.sh'
            }
        }
    }
}
