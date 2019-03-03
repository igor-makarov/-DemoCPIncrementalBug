# DemoCPIncrementalBug

Bug when performing incremental install with a development pod that has several subspecs.

## To reproduce bug

Checkout and run:
```
bundle install
touch DevPod/Widget/Widget2.swift
bundle exec pod install
xcodebuild clean build  \
   -sdk iphonesimulator \
   -workspace 'DemoCPIncrementalBug.xcworkspace' \
   -scheme 'DemoCPIncrementalBug' | xcpretty
```