node('NodeRaw') {

  try {
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
      docker.image("jekyll/jekyll:${JEKYLL_VERSION}").inside {
        sh 'bundle install'
        sh 'bundle exec jekyll build'
      }
    }

    stage('Build Docker image') {
      def newImage = docker.build("algohub-site")
      docker.withRegistry("https://239150759114.dkr.ecr.us-west-1.amazonaws.com", "ecr:us-west-1:aws-ecr-cred") {
        newImage.push("${env.BUILD_ID}")
        newImage.push("latest")
      }
    }

  } finally {
    stage('Cleanup') {
      cleanWs notFailBuild: true
    }
  }

}
