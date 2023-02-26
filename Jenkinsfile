pipeline {
  agent {
    docker {
      image 'python:3.6'
    }
  }
  stages {
    stage('Test') {
      steps {
        sh 'pip install --user .[test]'
        sh 'python3 -m pytest -vv'
      }
    }
    stage('Build') {
      steps {
        sh 'pip install --user build'
        sh 'python3 -m build'
      }
    }
  }
}
