pipeline{
  agent any
  stages{
    stage('Build'){
      steps{          
        sh 'VERSION=`date "+%Y%m%d-%H%M%S"`
        mvn install -Dskiptest -Dcheckstyle.skip
        for image_id in `docker ps | grep "petclinic" | awk "{print $1}"`; do docker stop $image_id; done
        sleep 5
        cd /var/lib/jenkins/workspace/spring-petclinic && docker build -t amruta1984/petclinic:${VERSION} .
        cd /var/lib/jenkins/workspace/spring-petclinic && docker run -d -p 8081:8080 amruta1984/petclinic:${VERSION}
        docker push amruta1984/petclinic:${VERSION}'             
      }
    } 
  }
}
