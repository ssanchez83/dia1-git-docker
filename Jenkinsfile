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
        sh 'docker build -t hola-java:ci .'
      }
    }

    stage('Run') {
      steps {
        sh 'docker run --rm hola-java:ci'
      }
    }
  }
}
