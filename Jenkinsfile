pipeline {
  agent any
  stages {
    stage('Examine kubernetes') {
      steps {
        script {
          withKubeConfig(credentialsId: 'kubeconfig',
                         namespace: 'flaskapp') {
            sh 'kubectl get all'
          }
        }
      }
    }
  }
}
