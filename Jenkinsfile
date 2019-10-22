  
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
          sh "cat /var/jenkins_home/files/docker/nginx/Dockerfile |docker build -t nginx:${env.BUILD_ID} -f- ."
          sh "docker/nginx/run-container.sh nginx:${env.BUILD_ID}"
      }
    }
  }
}
