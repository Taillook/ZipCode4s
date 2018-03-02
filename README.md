# ZipCode4s
Swift library for manipulating postal codes.
## Installation
### CocoaPods

```CocoaPods
pod 'ZipCode4s'
```

### Carthage

```Cartfile
github "Taillook/ZipCode4s"
```

## Usage
### code

```swift
import ZipCode4s
let addrInfo = ZipCode(zipcode: "1500043")

print(addrInfo.zipcode)
print(addrInfo.prefecture)
print(addrInfo.prefectureKana)
print(addrInfo.city)
print(addrInfo.cityKana)
print(addrInfo.town)
print(addrInfo.townKana)
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
