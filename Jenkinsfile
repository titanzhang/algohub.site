pipeline {
  agent {
    node { label 'NodeRaw' }
  }
  parameters {
    string(name: 'JEKYLL_CFG_ID', defaultValue: '3460009a-5013-467a-9b44-d29a922267e0')
  }

  stages {
    stage('Clone SourceCode') {
      steps {
        // checkout scm
        sh 'pwd'
      }
    }

    stage('Production Config') {
      steps {
        configFileProvider([configFile(fileId: parameters.JEKYLL_CFG_ID, variable: 'CONFIG_YML')]) {
          sh 'pwd'
          sh 'cat ${CONFIG_YML}'
          sh 'ls -l'
          //TODO: replace the dev version
        }
      }
    }
  }
}
