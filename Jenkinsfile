pipeline{
  agent any
  stages{
    stage("Build"){
      steps{
        //build//
        sh 'mvn install -Dskiptest -Dcheckstyle.skip'
        //docker build//
        sh 'docker build -t amruta1984/petclinic .'
        //docker run//
        sh 'docker run -d -p 8081:8080 petclinic'
        //docker push//
        sh 'docker push amruta1984/petclinic:v1'
      }
    }
  }
}  
    
