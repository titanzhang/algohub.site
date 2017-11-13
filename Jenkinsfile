pipeline {
  agent {
    node { label 'NodeRaw' }
  }
  environment {
    JEKYLL_CFG_ID = '3460009a-5013-467a-9b44-d29a922267e0'
    JEKYLL_CFG_FILE = '_config.yml'
    JEKYLL_VERSION = '3.5'
  }

  stages {
    stage('Production Config') {
      steps {
        configFileProvider([configFile(fileId: JEKYLL_CFG_ID, variable: 'CONFIG_YML')]) {
          echo 'Write production configurations'
          sh 'cat "${CONFIG_YML}" > ${JEKYLL_CFG_FILE}'
        }
      }
    }

    stage('Build html') {
      agent {
        docker {
          image 'jekyll/jekyll:${JEKYLL_VERSION}'
          args '-v ${PWD}:/srv/jekyll'
        }
      }
      steps {
        sh 'bundle exec jekyll build'
      }

    }
  }
}
