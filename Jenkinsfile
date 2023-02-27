pipeline {
  agent any
  stages {
    stage('Examine kubernetes') {
      steps {
        script {
          withKubeConfig(credentialsId: 'kubeconfig') {
            sh 'kubectl get -A all'
          }
        }
      }
    }
  }
}
