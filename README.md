# TDTSwiftyColor

[![CI Status](http://img.shields.io/travis/Todate/TDTSwiftyColor.svg?style=flat)](https://travis-ci.org/Todate/TDTSwiftyColor)
[![Version](https://img.shields.io/cocoapods/v/TDTSwiftyColor.svg?style=flat)](http://cocoapods.org/pods/TDTSwiftyColor)
[![License](https://img.shields.io/cocoapods/l/TDTSwiftyColor.svg?style=flat)](http://cocoapods.org/pods/TDTSwiftyColor)
[![Platform](https://img.shields.io/cocoapods/p/TDTSwiftyColor.svg?style=flat)](http://cocoapods.org/pods/TDTSwiftyColor)
[![Swift-4.1](http://img.shields.io/badge/Swift-4.1-brightgreen.svg)]()

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

TDTSwiftyColor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TDTSwiftyColor"
```

## Usage

```swift
import TDTSwiftyColor
```

## Properties

**components**
```swift
UIColor.black.components     // (0.0, 0.0, 0.0, 1.0)
UIColor.white.components     // (1.0, 1.0, 1.0, 1.0)
UIColor.red.components       // (1.0, 0.0, 0.0, 1.0)
UIColor.green.components     // (0.0, 1.0, 0.0, 1.0)
UIColor.blue.components      // (0.0, 0.0, 1.0, 1.0)
UIColor.clear.components     // (0.0, 0.0, 0.0, 0.0)
```

**rgbString**
```swift
UIColor.black.rgbString      // "000000"
UIColor.white.rgbString      // "FFFFFF"
UIColor.red.rgbString        // "FF0000"
UIColor.green.rgbString      // "00FF00"
UIColor.blue.rgbString       // "0000FF"
UIColor.clear.rgbString      // "000000"
```

**argbString**
```swift
UIColor.black.argbString     // "FF000000"
UIColor.white.argbString     // "FFFFFFFF"
UIColor.red.argbString       // "FFFF0000"
UIColor.green.argbString     // "FF00FF00"
UIColor.blue.argbString      // "FF0000FF"
UIColor.clear.argbString     // "00000000"
```

## Initializers

**UInt**
```swift
UIColor(rgb: 0x000000)
UIColor(rgb: 0x000000, alpha: 0.5)
```

**Hex String**
```swift
UIColor(hex: "#0FF")
UIColor(hex: "#0000FF")
UIColor(hex: "#FF00FF00")

UIColor(hex: "0FF")
UIColor(hex: "0000FF")
UIColor(hex: "FF00FF00")
```

## License

TDTSwiftyColor is available under the MIT license. See the LICENSE file for more info.
