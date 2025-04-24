pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building WAR file..."
                sh 'mvn clean package'
            }
        }

        stage('Deploy to DEV') {
            steps {
                echo "Deploying to DEV..."
                // Placeholder: will replace with real deploy logic
            }
        }

        stage('Approval') {
            steps {
                input message: 'Deploy to QA?', ok: 'Yes, go ahead!'
            }
        }

        stage('Deploy to QA') {
            steps {
                echo "Deploying to QA..."
                // Placeholder: will replace with real deploy logic
            }
        }
    }
}
