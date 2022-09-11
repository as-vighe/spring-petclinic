pipeline{
  agent any
  stages{
    stage('Build'){
      steps{          
        sh 'mvn install -Dskiptest -Dcheckstyle.skip'
        //docker build//
        sh 'for image_id in `docker ps | grep "petclinic" | awk "{print $1}"`; do docker stop $image_id; done'
        sh 'sleep 5'
        sh 'cd /var/lib/jenkins/workspace/spring-petclinic && docker build -t amruta1984/petclinic:${IMAGE_ID} .'
        sh 'docker build -t amruta1984/petclinic .'
        //docker run//
        sh 'cd /var/lib/jenkins/workspace/spring-petclinic && docker run -d -p 8081:8080 petclinic'
        //docker push//
        sh 'docker push amruta1984/petclinic:${IMAGE_ID}'               
      }
    } 
  }
}
