pipeline {
  agent {
    node { label 'NodeRaw' }
  }

  stages {
    stage('Clone SourceCode') {
      steps {
        // checkout scm
        sh 'pwd'
      }
    }

    stage('Production Config') {
      def jekyllCfgFile = '3460009a-5013-467a-9b44-d29a922267e0'
      steps {
        configFileProvider([configFile(fileId: jekyllCfgFile, variable: 'CONFIG_YML')]) {
          sh 'pwd'
          sh 'cat ${CONFIG_YML}'
          sh 'ls -l'
          //TODO: replace the dev version
        }
      }
    }
  }
}
