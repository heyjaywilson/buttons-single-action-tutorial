# How to use the same action function with multiple buttons

Some iOS apps require buttons to utilize the same function when tapped, think number buttons in a Calculator App. A number button on a calculator will perform the same action, store the number associated with it. Instead of declaring a function for each button, create one function that uses the button tag.

Find the GitHub repo at the bottom of this post.

# Create the project and the "UI"

Create a new iOS Single View App and give it a product name of "buttons to action".

Add two buttons to `Main.storyboard`. You can add style to the buttons to make it easier to see. I'm going to add a background and make a bit larger.

Add a label to `Main.storyboard`.

![Main.storyboard with a label to the left and two buttons towards the bottom](https://github.com/maeganjwilson/buttons-single-action-tutorial/blob/master/tutorial/images/pic_1.png?raw=true)

## Add a tag value to buttons

When utilizing the same function on both buttons, there needs to be a way to distinguish between the two buttons. A way to do this is to utilize Tag. This can be found in the inspector.

![Main.storyboard with the Tag pointed out](https://github.com/maeganjwilson/buttons-single-action-tutorial/blob/master/tutorial/images/tag.png?raw=true)

Set the button on the left to have a `Tag` of 0, and set the button on the right to have a `Tag` of 1.

## Add the label IBOutlet to the `ViewController.swift`.

Click on "Show the Assistant Editor Button" so that `Main.storyboard` and `ViewController.swift` can be open side by side.
Add the following code to the class:

```swift
class ViewController: UIViewController {
		//add the line below this comment

		@IBOutlet weak var label: UILabel!

		//do not adjust the code below this comment
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
```

## Write a function for the buttons

Now, we need to write a function for the buttons to execute.
The function is going to change the label based on which button is pushed.
The button on the left will make the label say "Button 1 pushed", and the right button will make the label say "Button 2 pushed".

Add the following below `viewDidLoad(){}` but still inside the class:

```swift
@IBAction func buttonPressed(_ sender: UIButton) {
        label.text = "Button \(sender.tag + 1) was pressed"
    }
```

## Associate the buttons to the function

Drag the circle next to the function to the buttons. This is all it takes to associate two or more buttons to one function.

# Run the app

Now, build and run the app.
Click the button on the left, and the label should change to "Button 1 was pressed". Click the button on the right, and the label should change to "Button 2 was pressed".

Here is the [finished GitHub Repo](https://github.com/maeganjwilson/buttons-single-action-tutorial).
{% github maeganjwilson/buttons-single-action-tutorial %}

---

If you enjoyed this article and want more, please consider subscribing to my [Patreon](https://www.patreon.com/maeganwilson_) and checking out my other posts!
