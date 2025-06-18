pipeline {
    agent {label 'First'}

    stages {
        stage("Clone Repo") {
            steps {
                git url: 'https://github.com/IradIcaTE/Apache-website.git', branch: 'main'
            }
        }

        stage("Run Ansible Playbook") {
            steps {
                sh 'ansible-playbook playbook/deploy_apache.yml -i inventory.ini --ask-become-pass'
            }
        }
    }
}