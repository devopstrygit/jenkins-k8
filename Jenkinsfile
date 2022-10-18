pipeline{

	agent {label 'dev'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/devopstrygit/jenkins-k8.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t worthy98/c-n-c:1 .'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push thetips4you/nodeapp_test:latest'
			}
		}
	}
  		stage('Deploy') {

			steps {
				sh 'kubectl rollout restart deploy pod-github -n gihub'
			}
		}
	}
	post {
		always {
			sh 'docker logout'
		}
	}

}
}
