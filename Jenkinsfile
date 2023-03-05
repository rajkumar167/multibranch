pipline{
    agent any
    stages{
        stage('when branch is main') {
    when {
        branch 'main'
    }
    steps {
        script{
             sh "docker build -t rajkumar167/rajdocker ."
        }
        echo 'run this stage - ony if the branch = main branch'
    }
}
stage('when branch is dev') {
    when {
        branch 'dev'
    }
    steps {
        echo 'run this stage - ony if the branch = dev branch'
    }
}
    }
   
}
