pipeline {
  agent {
    docker {
      image 'python:3.6'
      args '-u root:root'
    }
  }
  stages {
    stage('Test') {
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
  }
}
