pipeline {
	agent any
	tools {
		terraform 'terraform'
	}
	stages {
		stage('GIT Checkout') {
			steps {
				git branch: 'HEAD', credentialsId: 'git-hub', url: 'https://github.com/Rajpericharla/terraform'
			}
		}
		stage('Terraform Init') {
			steps {
				sh label: '', script: 'terraform init'
			}
		}
		stage('Terraform Apply') {
			steps {
				sh label: '', script: 'terraform apply --auto-approve'
			}
		}
	}
}
