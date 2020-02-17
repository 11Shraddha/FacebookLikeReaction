# FacebookLikeReaction

[![CI Status](https://img.shields.io/travis/11Shraddha/FacebookLikeReaction.svg?style=flat)](https://travis-ci.org/11Shraddha/FacebookLikeReaction)
[![Version](https://img.shields.io/cocoapods/v/FacebookLikeReaction.svg?style=flat)](https://cocoapods.org/pods/FacebookLikeReaction)
[![License](https://img.shields.io/cocoapods/l/FacebookLikeReaction.svg?style=flat)](https://cocoapods.org/pods/FacebookLikeReaction)
[![Platform](https://img.shields.io/cocoapods/p/FacebookLikeReaction.svg?style=flat)](https://cocoapods.org/pods/FacebookLikeReaction)

FacebookLikeReaction is a customizable view which provides more options to share your reactions on any post like Facebook Reactions.

![alt tag](https://github.com/11Shraddha/FacebookLikeReaction/blob/master/ReactionDemo.gif)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 10.0+    
Xcode 10.0+   
Swift 4.2+     


## Installation

FacebookLikeReaction is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FacebookLikeReaction'
```
## Usage

```Swift
class ViewController: UIViewController {

   override func viewDidLoad() {
       super.viewDidLoad()

        // Create a UIButton 
        var btnReaction = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 30))
        btnReaction.setTitle("Long Press here", for: .normal)
        btnReaction.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(btnReaction)

       var reactionView = ReactionView()
       let reactions: [Reaction] = [Reaction(title: "Laugh", imageName: "icn_laugh"),
                            Reaction(title: "Like", imageName: "icn_like"),
                            Reaction(title: "Angry", imageName: "icn_angry"),
                            Reaction(title: "Love", imageName: "icn_love"),
                            Reaction(title: "Sad", imageName: "icn_sad")]
        
        reactionView?.initialize(delegate: self , reactionsArray: reactions, sourceView: self.view, gestureView: btnReaction)
    }
 }

//MARK: - FacebookLikeReactionDelegate
extension ViewController: FacebookLikeReactionDelegate {
    
    func selectedReaction(reaction: Reaction) {
        print("Selected-------\(reaction.title)")
    }
}
```


## Author

11Shraddha, shraddhasojitra11@gmail.com

## License

FacebookLikeReaction is available under the MIT license. See the LICENSE file for more info.
