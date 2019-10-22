  
pipeline {
  agent any

  stages {
        stage('build') {
          steps {
          sh "docker build -t alpdemo:base -f /var/jenkins_home/files/docker/alpine/Dockerfile ."
        }  
      }
       stage('nginx') {
         steps {
          sh "docker build -t nginx:${env.BUILD_ID} -f ./docker/nginx/Dockerfile ./docker/nginx"
          sh "docker/nginx/run-container.sh nginx:${env.BUILD_ID}"
      }
    }
  }
}
