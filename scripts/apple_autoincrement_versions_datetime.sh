#/!bin/bash
echo "Update the manifest"
echo $ManifestPath

# Get the current date in YYYYMMDD format
current_datetime_ms=$(date +%s)

# Update the CFBundleVersion in the Info.plist file
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $current_datetime_ms" "$ManifestPath"
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $current_datetime_ms" "$ManifestPath"
