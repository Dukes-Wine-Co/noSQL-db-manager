pipeline {
  agent any

  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/Dukes-Wine-Co/noSQL-db-manager'
      }
    }

    stage('Run Tests'){
      steps {
          script {
            sh 'make tests'
          }
       }
    }
  }
}