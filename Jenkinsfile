pipeline {
  agent any
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
    }
    stage('Publish') {
      steps {
        script {
          docker.withRegistry('', 'dockerhub') {
            dockerImage.push("$BUILD_NUMBER")
          }
        }
      }
    }
    stage('Publish latest') {
      steps {
        when { branch 'master' }
        script {
          docker.withRegistry('', 'dockerhub') {
            dockerImage.push("latest")
          }
        }
      }
    }
  }
}
