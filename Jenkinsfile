pipeline{
  agent any
  stages{
    stage('Build'){
      steps{          
        sh 'mvn install -Dskiptest -Dcheckstyle.skip'
        sh 'for image_id in `docker ps | grep "petclinic" | awk "{print $1}"`; do docker stop $image_id; done'
        sh 'sleep 5'
        sh 'cd /var/lib/jenkins/workspace/spring-petclinic && docker build -t amruta1984/petclinic:v2 .'
        sh 'cd /var/lib/jenkins/workspace/spring-petclinic && docker run -d -p 8081:8080 amruta1984/petclinic:v2'
        sh 'docker push amruta1984/petclinic:v2'            
      }
    } 
  }
}
