#!/usr/bin/env bash

set -e

: ${APP_PATH:?}
: ${APP_BUILD_PATH:?}
: ${KEYSTORE_FILE_PATH:?}
: ${KEYSTORE_KEYPASS:?}
: ${KEYSTORE_STOREPASS:?}
: ${KEYSTORE_ALIAS:?}
: ${ANDROID_HOME:?}

adb connect 127.0.0.1:5555

METEOR_ALLOW_SUPERUSER=true

APK_FILE_NAME=${APK_FILE_NAME-"release-signed.apk"}
TMP_APP_PATH=/tmp/app
TMP_BUILD_PATH=/build

echo "Launching mobile build..."

mkdir -p ${TMP_APP_PATH}

cd ${TMP_APP_PATH}

cp -rp ${APP_PATH}/. ./

echo "Installing NPM packages..."

rm -fr ./node_modules && rm -fr ./.meteor/local
npm install

echo "Building Meteor app..."

meteor --allow-superuser add-platform android

meteor --allow-superuser build ${TMP_BUILD_PATH} --server 127.0.0.1:5555

echo "Done!"
