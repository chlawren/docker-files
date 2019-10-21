pipeline {
  agent none

  stages {
        stage('build') {
           agent {
          steps {
          sh "docker build -t alpdemo:base -f docker/alpine/Dockerfile ."
        }  
      }
    }
       stage('nginx') {
           agent {
             dockerfile {
             filename 'Dockerfile'
             dir '${WORKSPACE}/docker/nginx'
             args '-t nginx:${env.BUILD_ID}'
             }
           }  
        }
    }
}


