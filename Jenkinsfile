pipeline {
  agent any

  triggers {
    githubPush()
  }

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
  post {
    success {
      echo 'The pipeline was Successful'
    }
    failure {
      mail bcc: '', body: "<b>Example</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "foo@foomail.com";
    }
  }
}