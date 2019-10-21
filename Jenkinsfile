pipeline {
    agent none
    stages {
        stage('base') {
          node('master'){
            withEnv([
              'VERSION=base'
        ]){
            agent {
              dockerfile {
              filename 'Dockerfile'
              dir 'alpine'
              label 'alpine:base'
              additionalBuildArgs  '-t apline:${VERSION}'
        }
            steps {
                sh 'alpine/run-container.sh'
            }
        }
        stage('nginx') {
          node('master'){
            withEnv([
              'VERSION=0.1'
        ]){
            agent {
              dockerfile {
              filename 'Dockerfile'
              dir 'nginx'
              label 'nginx:'
              additionalBuildArgs  '-t nginx:${VERSION}'
        }

            steps {
                sh 'nginx/run-container'
            }
        }
    }
}
