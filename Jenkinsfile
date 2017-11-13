node {
  label 'NodeRaw'

  stage('Clone SourceCode') {
      // git 'https://github.com/titanzhang/algohub.site.git'
  }

  stage('Production Config') {
      def jekyllCfgFile = '3460009a-5013-467a-9b44-d29a922267e0'
      configFileProvider([configFile(fileId: jekyllCfgFile, variable: 'CONFIG_YML')]) {
        sh 'cat ${end.CONFIG_YML}'
        //TODO: replace the dev version
      }
  }
}
