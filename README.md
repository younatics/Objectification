# Objectification

[![Version](https://img.shields.io/cocoapods/v/Objectification.svg?style=flat)](http://cocoapods.org/pods/Objectification)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/Objectification/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/younatics/Objectification.svg?branch=master)](https://travis-ci.org/younatics/Objectification)
[![Platform](https://img.shields.io/cocoapods/p/Objectification.svg?style=flat)](http://cocoapods.org/pods/Objectification)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)


#### See [`Stringfication`](https://github.com/younatics/Stringfication) if you want to change objects to string

## Updates
See [CHANGELOG](https://github.com/younatics/Objectification/blob/master/CHANGELOG.md) for details

## Intoduction
🔨 Return objects where string is contained in object! This library will be useful when you develop search function :)

## Requirements

`Objectification` is written in Swift 3. Compatible with iOS 8.0+

## Installation

### Cocoapods

Objectification is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Objectification'
```
### Carthage
```
github "younatics/Objectification"
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
        
let objectification = Objectification(objects: datas, type: .all)
```

Get objects with `String`
```swift
print(objectification.objects(contain: "Awesome"))
//-> [YNDropDownMenu, YNSearch, YNExpandableCell]
```

## References
#### Please tell me or make pull request if you use this library in your application :) 

## Author
[younatics 🇰🇷](http://younatics.github.io)

## License
Objectification is available under the MIT license. See the LICENSE file for more info.





