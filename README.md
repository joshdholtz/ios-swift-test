ios-swift-test
==============

## Initial Thoughts
My initial thoughts of Swift are pretty positive. Syntax flows pretty nicely. Autocompletion already built into Xcode is pretty great (makes finding properites and methods that are different in Objective-C pretty easy to find).

One "gotcha" I found was that I created another file called "LayoutOfRelativity.swift" and I didn't need to import it into my ViewController to used it - I wasted to some time trying to figure out how to import it.

### ViewController

A simple UIViewController that has a lable and button. The button is placed relative to the label using the [extension on UIView](#extension) I created

```swift
import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creating a label
        var label : UILabel = UILabel(frame: CGRect(x: 0, y: 10, width: CGRectGetWidth(self.view.bounds), height: 40));
        label.center = self.view.center;
        label.textAlignment = NSTextAlignment.Center; // This is different
        label.text = "Omg I set a label";
        
        // Adding a label as a subview to the view
        self.view.addSubview(label);
        
        // Creating a button
        var button : UIButton = UIButton(frame: CGRect(x: 0, y: 10, width: CGRectGetWidth(self.view.bounds), height: 40));
        button.setTitle("Woah, press me!", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        // Adding a button as a subview to the view
        button.placeBelow(label, offset: 10); // Aligns button relative to label - LayoutOfRelativity.swift
        self.view.addSubview(button);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
```

### Extension

```swift
import UIKit

extension UIView {
    
    func placeBelow(view : UIView, offset : CGFloat) {
        self.frame.origin.y = CGRectGetMaxY(view.frame) + offset;
    }
    
}
```
