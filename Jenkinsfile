pipeline{
  agent any
  stages{
    stage("Build"){
      steps{
        //build//
        sh 'mvn install -Dskiptest -Dcheckstyle.skip'
        //docker build//
        sh 'docker build -t amruta1984/petclinic1 .'
        //docker run//
        sh 'docker run -d -p 8081:8080 petclinic1'
        //docker push//
        sh 'docker push amruta1984/petclinic1:v1'
      }
    }
  }
}  
    
