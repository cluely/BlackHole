driverName="Cluely"
bundleID="com.cluely.CluelyAudioDriver"
channels=2

xcodebuild \
  -project BlackHole.xcodeproj \
  -configuration Release \
  -target BlackHole CONFIGURATION_BUILD_DIR=build \
  PRODUCT_BUNDLE_IDENTIFIER=$bundleID \
  GCC_PREPROCESSOR_DEFINITIONS='$GCC_PREPROCESSOR_DEFINITIONS 
  kNumber_Of_Channels='$channels' 
  kPlugIn_BundleID=\"'$bundleID'\" 
  kDriver_Name=\"'$driverName'\"
  kDevice_Name=\"'$driverName'\"'

rm -rf $driverName.driver
mv build/BlackHole.driver $driverName.driver

rm -rf build

echo "Build is complete. See $driverName.driver"
