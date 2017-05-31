# Tally

![Swift3.1](https://img.shields.io/badge/Swift-3.1-orange.svg?style=flat")
[![Version](https://img.shields.io/cocoapods/v/Tally.svg?style=flat)](http://cocoapods.org/pods/Tally)
[![Platform](https://img.shields.io/cocoapods/p/Tally.svg?style=flat)](http://cocoapods.org/pods/Tally)
[![License](https://img.shields.io/cocoapods/l/Tally.svg?style=flat)](http://cocoapods.org/pods/Tally)


Description
--------------

`Tally` is used to check how many times the user has opened the application using a
simple `if` statement. This adds a lot of flexability on when you want something to happen.
Want to fire off an alert after the 15th opening? Easy.


# Contents
1. [Installation](#installation)
2. [Supported OS & SDK versions](#supported-versions)
3. [Usage](#usage)
4. [License](#license)
5. [Contact](#contact)


<a name="installation"> Installation </a>
--------------

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate `Tally` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Tally'
```

Then, run the following command:

```bash
$ pod install
```

### Manually

If you prefer not to use CocoaPods, you can integrate `Tally` into your project manually.


<a name="supported-versions"> Supported OS & SDK Versions </a>
-----------------------------
* Supported build target - iOS 8.0+

<a name="usage"> Usage </a>
--------------
#### Using tally is very simple.
**First:** import the pod
```swift
import Tally
```
**Second:** add the following snippet to `application(_:didFinishLaunchingWithOptions:)` in your AppDelegate
```swift
Tally.didOpenApplication()
```

**Third:** When you want to check for a certain threshold of app launches, use
```swift
if Tally.hasOpenedApp(numberOfTimes: 3) {
    // Do anything your heart desires
}
```

<a name="license"> License </a>
--------------

`Tally` is developed by [Laurent Shala](https://www.linkedin.com/in/laurentshala) at [StockX](https://stockx.com) and is released under the MIT license. See the `LICENSE` file for details.


<a name="contact"> Contact </a>
--------------

Feel free to follow me on [my personal Twitter account](https://twitter.com/laurentshala). If you find any problems with the project or have ideas to enhance it, feel free to open a GitHub issue and/or create a pull request.
