pipeline {
  agent none

  stages {
    stage("alpine-build") {
      agent {
        dockerfile {
          filename "docker/alpine/Dockerfile"
        }
      }
    }

    stage("nginx-build") {
      agent {
        dockerfile {
          filename "docker/nginx/Dockerfile"
          args "-p 80:80 -p 443:443 -t ${env.BUILD_ID} --name mynginx"
        }
      }

    }
  }
}
