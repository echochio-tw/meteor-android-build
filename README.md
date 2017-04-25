# Meteor Android Docker image

This repository contains a Docker image with an environment prepared to build Cordova-based Android APKs from Meteor projects. It has been tested and should work with both Meteor 1.3 and 1.4. 

## Usage

This image requires a couple of inputs from the user:

### Example commands

The following command builds the Meteor app found on `/path/to/meteor/app` using the default keystore. The APK file is configured to connect to the remote Meteor server found on *example.com*. It will be placed under the host's current working directory.



```
# mkdir /root/build
# meter create hello
# docker run --rm -it -v /root/hello:/app -v /root/build:/build agmangas/meteor-android-build
# ls -l /root/build/android/
total 476
drwxr-xr-x 13 root root   4096 Apr 25 13:29 project
-rw-r--r--  1 root root    231 Apr 25 13:29 README
-rw-r--r--  1 root root 479145 Apr 25 13:29 release-unsigned.apk
```

