pipeline {
  agent {
    docker { image 'python:3' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'pip install -e .[test] && python3 -m pytest -vv'
      }
    }
    stage('Build') {
      steps {
        sh 'pip install build && python3 -m build'
      }
    }
  }
}
