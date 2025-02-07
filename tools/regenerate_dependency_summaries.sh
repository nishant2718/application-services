#!/bin/sh

set -euvx

python3 ./tools/dependency_summary.py > ./DEPENDENCIES.md

python3 ./tools/dependency_summary.py --all-ios-targets --package megazord_ios > megazords/ios/DEPENDENCIES.md
python3 ./tools/dependency_summary.py --all-ios-targets --package ios_rust > megazords/ios-rust/DEPENDENCIES.md

python3 ./tools/dependency_summary.py --all-android-targets --package megazord > megazords/full/DEPENDENCIES.md
python3 ./tools/dependency_summary.py --all-android-targets --package megazord --format pom > megazords/full/android/dependency-licenses.xml
