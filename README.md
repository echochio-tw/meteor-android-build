# Meteor Android Docker image

This repository contains a Docker image with an environment prepared to build Cordova-based Android APKs from Meteor projects. It has been tested and should work with both Meteor 1.3 and 1.4. 

## Usage

This image requires a couple of inputs from the user:

### Example commands

The following command builds the Meteor app .

```
# id
uid=0(root) gid=0(root) groups=0(root)
# mkdir /root/build
# meteor --allow-superuser create hello
# docker run --rm -it -v /root/hello:/app -v /root/build:/build echochio/meteor-android-build
# ls -l /root/build/android/
total 476
drwxr-xr-x 13 root root   4096 Apr 25 13:29 project
-rw-r--r--  1 root root    231 Apr 25 13:29 README
-rw-r--r--  1 root root 479145 Apr 25 13:29 release-unsigned.apk
```

