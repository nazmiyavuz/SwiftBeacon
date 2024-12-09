# SwiftBeacon

[![apple](https://img.shields.io/badge/platform-iOS-181717?style=plastic&logo=apple&color=lightgray)](https://developer.apple.com/)
[![swift](https://img.shields.io/badge/swift-6.0-181717?style=plastic&logo=swift&color=orange)](https://developer.apple.com/swift/)

A lightweight library to log your codes and errors safely.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SwiftBeacon is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftBeacon'
```

### CocoaPods

#### Simply

Simply add the following line to your Podfile:

```ruby
pod 'SwiftBeacon'
```

##### For the stable version

```ruby
pod 'SwiftBeacon', :git => 'https://github.com/nazmiyavuz/SwiftBeacon.git', :branch => 'main'
```

or

```ruby
platform :ios, '12.0'
use_frameworks!

target '<Your Target Name>' do

    pod 'SwiftBeacon', :git => 'https://github.com/nazmiyavuz/SwiftBeacon.git', :branch => 'main'

end
```

#### For the exact version

```ruby
pod 'SwiftBeacon', '~> 1.0.5'
```

### Swift Package Manager

SwiftBeacon is available through [Swift Package Manager](https://swift.org/package-manager/). To install
it, in Xcode select `File` > `Add Package Dependencies...` and add SwiftBeacon repository URL:

```url
https://github.com/nazmiyavuz/SwiftBeacon.git
```

Note: Please update the latest version or `main` branch of the SwiftBeacon repository in order to get the latest features.

## Usage

In AppDelegate.swift or any public level you should add the following code:

- if iOS 15.0 or higher you can add logName so you are able to filter your logs. The **logName** parameter is optional. Its default value is `nil`.

```swift
import SwiftBeacon

let uiDesignLogger = SwiftBeacon(logName: "uiDesign")
```

- if you use the version which is lesser than iOS 15.0 you should add the following code.

```swift
import SwiftBeacon

let logger = SwiftBeacon()
```

Then you can log your code safely by using the following code:

```swift
logger.trace("Trace example")
logger.debug("Debug example")
logger.info("Info example")
logger.notice("Notice example")
logger.warning("Warning example")
logger.error("Error example")
logger.critical("Critical example")
logger.fault("Fault example")

```

## Author

nazmiyavuz, nazmiyavuz@gmail.com

## License

SwiftBeacon is available under the MIT license. See the LICENSE file for more info.
