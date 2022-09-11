pipeline{
  agent any
  stages{
    stage('Build'){
      steps{
          sh 'mvn install '
      }
      post{
        success{
          echo 'Now Archieving artifacts....'
          archiveArtifacts artifacts: '**/*.jar'
        }
      }
    }
      stage('Code Analysis'){
        steps{
            sh 'mvn -Dskiptest -Dcheckstyle.skip'
        }
        post{
            success{
                echo 'Analysis result'
            }
        }
      }
        //docker build//
        sh 'docker build -t amruta1984/petclinic .'
        //docker run//
        sh 'docker run -d -p 8081:8080 petclinic'
        //docker push//
        sh 'docker push amruta1984/petclinic:v1'
      }
    } 
    
