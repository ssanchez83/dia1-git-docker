pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'javac java/Hola.java'
      }
    }

    stage('Package') {
      steps {
        sh 'sudo docker build -t hola-java:ci .'
      }
    }

    stage('Run') {
      steps {
        sh 'sudo docker run --rm hola-java:ci'
      }
    }
  }
}
