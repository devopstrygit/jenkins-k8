pipeline{

	agent {label 'dev'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
                git 'https://github.com/shazforiot/nodeapp_test.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t worthy98/c-n-c:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'docker login -u worthy98 -p Feeling420'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push worthy98/c-n-c:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}