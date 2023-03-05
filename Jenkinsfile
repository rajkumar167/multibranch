pipeline { 
    agent any
    stages {
        stage("stage") {
            when { anyOf { branch 'prod'; branch 'test' } }
            steps {
                echo "Run only pro and test"
            }
        }
    }
}
