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
          sh "cat ${WORKSPACE}/docker/nginx/Dockerfile |docker build -t nginx:${env.BUILD_ID} -f- ."
          sh "docker/nginx/run-container.sh"
      }
    }
  }
}
