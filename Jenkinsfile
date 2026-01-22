pipeline {
  agent any

  stages {
    stage('Debug') {
      steps {
        sh 'pwd'
        sh 'ls -la'
        sh 'ls -la java || true'
      }
    }

    stage('Build') {
      steps {
        sh 'javac java/Hola.java'
      }
    }

    stage('Package') {
      steps {
        sh 'sudo docker build -t hola-java:ci -f Dockerfile .'
      }
    }

    stage('Run') {
      steps {
        sh 'sudo docker run --rm hola-java:ci'
      }
    }
  }
}
