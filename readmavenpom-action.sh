#!/usr/bin/env bash

APP_VERSION=`xmllint --xpath '/*[local-name()="project"]/*[local-name()="version"]/text()' pom.xml`
echo "::set-output name=version::$APP_VERSION"


ARTIFACT_ID=`xmllint --xpath '/*[local-name()="project"]/*[local-name()="artifactId"]/text()' pom.xml`
echo "::set-output name=artifactId::$ARTIFACT_ID"

GROUP_ID=`xmllint --xpath '/*[local-name()="project"]/*[local-name()="groupId"]/text()' pom.xml`
echo "::set-output name=groupId::$GROUP_ID"
