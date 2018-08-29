if ["$TRAVIS_BUILD_DIR" eq ""]
then
  export TRAVIS_BUILD_DIR=$(pwd)
fi

cd greetings-maven/2.15.0-J10

export PROFILES=-Ptycho_snapshots,xtext_snapshots
export SETTINGS="-s $TRAVIS_BUILD_DIR/settings.xml"
export DISABLE_DOWNLOAD_PROGRESS=-Dorg.slf4j.simpleLogger.log.org.apache.maven.cli.transfer.Slf4jMavenTransferListener=warn 

mvn -f org.eclipse.xtext.example.mydsl.parent/pom.xml $DISABLE_DOWNLOAD_PROGRESS $SETTINGS $PROFILES clean install
