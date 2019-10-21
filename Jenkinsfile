pipeline {
  agent none

  stages {
    stage("buildbase") {
      agent {
        dockerfile {
          filename "docker/alpine/Dockerfile"
        }
      }

      steps {
        sh "docker ps -a"
      }
    }

    stage("nginx") {
      agent {
        dockerfile {
          filename "docker/nginx/Dockerfile"
        }
      }

      steps {
        sh "docker ps -a"
      }
    }
  }
}
