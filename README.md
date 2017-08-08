# ZipCode4s
Swift library for manipulating postal codes.
## Installation
### CocoaPods
`pod 'ZipCode4s'`
## Usage
### code
```swift
import ZipCode4s
let a = ZipCode(zipcode: "1500043")

print(a.zipcode)
print(a.prefecture)
print(a.prefectureKana)
print(a.city)
print(a.cityKana)
print(a.town)
print(a.townKana)
```
### result
```
1500043
東京都
トウキョウト
渋谷区
シブヤク
道玄坂
ドウゲンザカ
```
## Contribution
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
## Author

[Taillook](https://github.com/Taillook)
