pipeline {
  agent any
  environment {     
    DOCKERHUB_AUTH= credentials('dockerhub')     
  } 
  stages {
    stage('Test') {
      agent {
        docker {
          image 'python:3.6'
          args '-u root:root'
        }
      }
      steps {
        sh 'pip install .[test]'
        sh 'python3 -m pytest -vv'
      }
    }
    stage('Build') {
      steps {
        script {
          dockerImage = docker.build "javiplx/flaskapp:$BUILD_NUMBER"
        }
      }
    stage('Publish') {
      steps {
        script {
          docker.withRegistry('', DOCKERHUB_AUTH) {
            dockerImage.push("$BUILD_NUMBER")
          }
        }
      }
    }
  }
}
