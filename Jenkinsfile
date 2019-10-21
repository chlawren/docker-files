pipeline {
  agent any

  stages {
        stage('build') {
          steps {
          sh "docker build -t alpdemo:base -f docker/alpine/Dockerfile ."
        }  
      }
       stage('nginx') {
             dockerfile {
             filename 'Dockerfile'
             dir '${WORKSPACE}/docker/nginx'
             args '-t nginx:${env.BUILD_ID}'
           }  
        }
    }
}


