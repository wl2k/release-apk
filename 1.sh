#!/bin/sh

:Release APK
chmod +x ./gradlew
        ./gradlew assembleRelease \
          ${{ inputs.gradle-args }} \
          -Pandroid.injected.signing.store.file='${{ runner.temp }}/.jks' \
          -Pandroid.injected.signing.store.password='${{ inputs.keystore-password }}' \
          -Pandroid.injected.signing.key.alias='${{ inputs.key-alias }}' \
          -Pandroid.injected.signing.key.password='${{ inputs.key-password }}'