pipeline {
  agent none

  stages {
    stage("buildbase") {
      agent {
        dockerfile {
          filename "files/docker/alpine/Dockerfile"
        }
      }

      steps {
        sh "docker ps -a"
      }
    }

    stage("nginx") {
      agent {
        dockerfile {
          filename "files/docker/nginx/Dockerfile
        }
      }

      steps {
        sh "docker ps -a"
      }
    }
  }
}
