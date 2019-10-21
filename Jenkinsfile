pipeline {
       stage('Build Docker'){

            sh 'docker build -t applbase:alpine -f docker/apline/Dockerfile .'
       }

       stage('Deploy'){

         sh 'docker ps -a'


       }
}
