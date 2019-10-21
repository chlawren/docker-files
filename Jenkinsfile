pipeline {
  agent any

  stages {
        stage('build') {
          steps {
          sh "docker build -t alpdemo:base -f docker/alpine/Dockerfile ."
        }  
      }
        stage('nginx') {
            agent {
              dockerfile {
              filename '${WORKSPACE}/docker/nginx/Dockerfile'
              additionalBuildArgs  '-t nginx:${env.BUILD_ID}'
              }
           }
        }
  }
}
