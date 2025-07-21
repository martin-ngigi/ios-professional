# ios-professional
UIKit app
- [Github Resource](https://github.com/jrasmusson/ios-professional-course)

## Commands
- CMD + SHF + J -> To see where the file is in project structure.
- CMD + 0 -> See project structure on left
- Option + CMD + 0 -> See project structure on left
- SHF + CMD + Y -> Show or Hide bottom logs in XCode
- Option + Click - View Documentation and method parameters.

### Make asset images retain their resolution
- Click the asset i.e. the image, then Click Option + CMD + 0 or open the right menu. Check Resising to be "Preserve Vector Data", In scales, select "Single Scale"

## Removing Storyboards
- Global search(CMD + SHIFT + F) "main"
- Delete in Info.plist, i.e. delete entire "Application Scene Manifest" in the app target.
- Navigate to Build Settings, search Main, then delete "UIKit Main Storyboard File Base Name"
