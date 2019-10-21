pipeline {
  agent any

  stages {
        stage('build') {
          steps {
          sh "docker build -t alpdemo:base -f docker/alpine/Dockerfile ."
        }  
      }
       stage('nginx') {
         steps {
          sh "docker build -t nginx:${env.BUILD_ID} -f docker/nginx/Dockerfile ."
          sh "docker/nginx/run-container.sh"
      }
    }
  }
}
