pipeline {
  agent any

  stages {
        stage('build') {
          steps {
 #         sh "docker build -t alpdemo:base -f docker/alpine/Dockerfile ."
          sh "cat docker/alpine/Dockerfile | docker build -t alpdemo:base -f- ."
        }  
      }
       stage('nginx') {
         steps {
          sh "docker build -f ${WORKSPACE}/docker/nginx/Dockerfile - -t nginx:${env.BUILD_ID}"
          sh "docker/nginx/run-container.sh"
      }
    }
  }
}
