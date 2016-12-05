# KGHorizontalLoader

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift3 Compatible](https://img.shields.io/badge/KGHorizontalLoader-Swift3-brightgreen.svg)](https://img.shields.io/badge/KGHorizontalLoader-Swift3-brightgreen.svg)
[![license](https://img.shields.io/github/license/Gypsyan/KGHorizontalLoader.svg)]()

`KGHorizontalLoader` is a Custom loading animation.

# Installation

## Cocoapods

Install Cocoapods if need be.

```bash
$ gem install cocoapods
```

Add `KGHorizontalLoader` in your `Podfile`.

```ruby
use_frameworks!

pod 'KGHorizontalLoader'
```

Then, run the following command.

```bash
$ pod install
```
## Carthage

Install Carthage if need be.

```bash
$ brew update
$ brew install carthage
```

Add `KGHorizontalLoader` in your `Cartfile`.

```ruby
github "Gypsyan/KGHorizontalLoader"
```

Run `carthage` to build the framework and drag the built `KGHorizontalLoader.framework` into your Xcode project.

# Usage

## Using Story board
Add a button to your Interface builder and set the class name as `KGHorizontalLoader` in the `identity inspector`. Provide the module name as `KGHorizontalLoader`.

Come to the `attribute inspector` and add the feature,

  * Background Line Color
  * Background Loader Color

  To start animation call this,

  ```

  @IBOutlet var loadingview: KGHorizontalLoader!
  loadingview.startAnimation()
  ```

  To stop animation,

  ```
  loadingview.stopAnimation()
  ```

# License

Copyright 2016 Ananth.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
