pipeline {
  agent any

  stages {
        stage('build') {
          steps {
          sh "docker built -t applbase:apline -f docker/alpine/Dockerfile ."
        }  
      }
       stage('nginx') {
         steps {
          sh "docker built -t nginx:${env.BUILD_ID} docker/nginx/run-container.sh"
          sh "docker/nginx/run-container.sh"
      }
    }
  }
}
