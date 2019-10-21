pipeline {
  agent none

  stages {
        stage('base') {
            agent {
              dockerfile {
              filename 'docker/alpine/Dockerfile'
              label 'alpine:base'
              additionalBuildArgs  '-t applbase:alpine'
        }
      }

      steps {
        sh "docker ps -a"
      }
    }
       stage('base') {
            agent {
              dockerfile {
              filename 'docker/nginx/Dockerfile'
              label 'nginx:base'
              additionalBuildArgs  '-t nginx:1'
        }
      }

      steps {
        sh "docker ps -a"
      }
    }
  }
}
