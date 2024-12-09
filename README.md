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

EdgeKit is available through [Swift Package Manager](https://swift.org/package-manager/). To install
it, in Xcode select `File` > `Add Package Dependencies...` and add EdgeKit repository URL:

```url
https://github.com/nazmiyavuz/SwiftBeacon.git
```

Note: Please update the latest version or `main` branch of the EdgeKit repository in order to get the latest features.

## Author

nazmiyavuz, nazmiyavuz@gmail.com

## License

SwiftBeacon is available under the MIT license. See the LICENSE file for more info.
