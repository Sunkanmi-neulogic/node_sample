pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Cloning Git') {
      steps {
        git 'https://github.com/Sunkanmi-neulogic/node_sample.git'
      }
    }
        
    stage('Installing Dependencies') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('Test') {
      steps {
         sh 'chmod 0777 ./node_modules/.bin/mocha'
         sh 'chmod +x script/test.sh'
         sh './script/test.sh'
      }
    }      
  }
}