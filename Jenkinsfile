pipeline {
  agent {
    node { label 'NodeRaw' }
  }
  options {
    skipDefaultCheckout()
  }
  environment {
    JEKYLL_CFG_ID = '3460009a-5013-467a-9b44-d29a922267e0'
    JEKYLL_CFG_FILE = '_config.yml'
    JEKYLL_VERSION = '3.5'
  }

  stages {
    stage ('Clone Source') {
      steps {
        checkout scm
      }
    }

    stage('Production Config') {
      steps {
        configFileProvider([configFile(fileId: JEKYLL_CFG_ID, variable: 'CONFIG_YML')]) {
          echo 'Write production configurations'
          sh 'cp "${CONFIG_YML}" ${JEKYLL_CFG_FILE}'
        }
      }
    }

    stage('Build html') {
      steps {
        docker.image('jekyll/jekyll:${JEKYLL_VERSION}').withRun('-v ${PWD}:/srv/jekyll').inside {
          sh 'bundle exec jekyll build'
        }
      }

    }
  }
}
