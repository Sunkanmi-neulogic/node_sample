//Jenkins file only to tutorial example
pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Biuld') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('Test') {
      steps {
         sh 'npm test'
      }
    }      
  }
}