pipeline {
  agent none

  stages {
        stage('base') {
            agent {
              dockerfile {
              filename 'docker/alpine/Dockerfile'
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
              additionalBuildArgs  '-t nginx:1'
        }
      }

      steps {
        sh "docker/nginx/run-container.sh"
      }
    }
  }
}
