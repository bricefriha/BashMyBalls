#!/bin/bash
rsync -avz \
  --include='${proj_name}/pubspec.yaml' \
  --include='${proj_name}/pubspec.lock' \
  --include='${proj_name}/lib/***' \
  --include='${proj_name}/assets/***' \
  --include='${proj_name}/ios/***' \
  --include='lib/config/*' \
  --exclude='${proj_name}/*' \
  ../ "${User}@${MacIP}:~/Documents/${proj_name}"
  
