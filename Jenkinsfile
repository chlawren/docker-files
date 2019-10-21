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
          sh "docker build . -f docker/nginx/Dockerfile -t nginx:${env.BUILD_ID}"
          sh "docker/nginx/run-container.sh"
      }
    }
  }
}
