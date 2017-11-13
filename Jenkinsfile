node('NodeRaw') {

  stage ('Clone Source') {
      checkout scm
  }

  stage('Production Config') {
    def JEKYLL_CFG_ID = '3460009a-5013-467a-9b44-d29a922267e0'
    def JEKYLL_CFG_FILE = '_config.yml'
    configFileProvider([configFile(fileId: JEKYLL_CFG_ID, variable: 'CONFIG_YML')]) {
      sh "cp \"${CONFIG_YML}\" ${JEKYLL_CFG_FILE}"
    }
  }

  stage('Build html') {
    JEKYLL_VERSION = '3.5'
    docker.image("jekyll/jekyll:${JEKYLL_VERSION}").inside('-v "$PWD":/srv/jekyll') {
      sh 'jekyll build'
    }
  }

}
