/usr/bin/xcodebuild -destination platform=\"iOS Simulator,name=iPhone 6\" -workspace $APPCENTER_SOURCE_DIRECTORY/ios/DemoApp.xcworkspace -scheme DemoApp clean archive CODE_SIGN_IDENTITY=\"\" CODE_SIGNING_REQUIRED=NO -archivePath $APPCENTER_OUTPUT_DIRECTORY/build/archive/DemoApp.xcarchive
rm -rf $BUILD_ARTIFACTSTAGINGDIRECTORY/*
cp -R $APPCENTER_OUTPUT_DIRECTORY/build/archive/DemoApp.xcarchive $BUILD_ARTIFACTSTAGINGDIRECTORY/build
