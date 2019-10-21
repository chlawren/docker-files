pipeline {
  agent none

  stages {
        stage('base') {
            agent {
              dockerfile {
              filename 'docker/alpine/Dockerfile'
              label 'alpine-1'
              additionalBuildArgs  '-t applbase:alpine'
        }
      }

      steps {
        sh "docker ps -a"
      }
    }
       stage('nginx') {
            agent {
              dockerfile {
              filename 'docker/nginx/Dockerfile'
              label 'nginx-1'
              additionalBuildArgs  '-t nginx:1'
        }
      }

      steps {
        sh "docker ps -a"
      }
    }
  }
}
