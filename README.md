# Objectification

[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-brightgreen.svg?style=flat)](https://github.com/younatics/Objectification/blob/master/Package.swift)
[![CocoaPods](https://img.shields.io/cocoapods/v/Objectification.svg?style=flat)](https://cocoapods.org/pods/Objectification)
[![Platform](https://img.shields.io/badge/platform-iOS%2013%2B-lightgrey.svg?style=flat)](https://github.com/younatics/Objectification/blob/master/Package.swift)
[![Swift 6](https://img.shields.io/badge/Swift-6.0-orange.svg?style=flat)](https://www.swift.org/)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/Objectification/blob/master/LICENSE)


#### See [Stringfication](https://github.com/younatics/Stringfication) if you want to change objects to string
#### See [YNSearch](https://github.com/younatics/YNSearch) for usage

## Updates
See [CHANGELOG](https://github.com/younatics/Objectification/blob/master/CHANGELOG.md) for details

## Intoduction
🔍 Return objects where string is contained in object! This library will be useful when you develop search function :)

## Requirements

`Objectification` requires iOS 13.0+ and Swift 6. It supports Swift Package Manager and CocoaPods.

## Installation

### Swift Package Manager

In Xcode, choose **File ▸ Add Package Dependencies…** and enter:

```
https://github.com/younatics/Objectification.git
```

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/younatics/Objectification.git", from: "2.0.0")
]
```

### CocoaPods

Objectification is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Objectification', '2.0.0'
```

## Usage
Import `Objectification`
```swift
import Objectification
```

Set Datas `[Any]` and Type `ObjectificationType`
```swift
let data1 = YNDropDownMenu()
let data2 = YNSearch()
let data3 = YNExpandableCell()
        
let datas = [data1, data2, data3] as [Any]
// Three types you can use (.properties, .values, .all) you can see `Stringfication` for more information
let objectification = Objectification(objects: datas, type: .all)
```

Get objects with `String`
```swift
print(objectification.objects(contain: "Awesome"))
//-> [YNDropDownMenu, YNSearch, YNExpandableCell]
```

## References
#### Please tell me or make pull request if you use this library in your application :) 
#### [YNSearch](https://github.com/younatics/YNSearch)
#### [Stringfication](https://github.com/younatics/Stringfication)

## Author
[younatics 🇰🇷](http://younatics.github.io)

## License
Objectification is available under the MIT license. See the LICENSE file for more info.



