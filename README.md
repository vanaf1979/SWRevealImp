SWRevealImp
====

A programatic swift implementation of SWReveal without using the storyboard. There are many tutorials on setting up SWReveal using the storyboard, but when i needed it i could not find one setting it up in code. Feel free to download, use, alter, or suggest improvements.

The process:
--------

Download SWRevealViewController by John-Lluch

```shell
https://github.com/John-Lluch/SWRevealViewController
```

Create a new swift project and add these to file by draging them to your project file tree.

```shell
SWRevealViewController.m
SWRevealViewController.h
```

XCode will prompt you if it should make a bridging header file. Jlet it and it will create a file called:

```shell
SWReavelImp-Bridging-Header.h
```

Edit the header file and make shure it contains the following:

```swift
#import "SWRevealViewController.h"
```

Create 3 new viewcontrollers and one new navigation controller called. NOTE: the menu view controllers dont have to be tableview controllers like in most tutorials.

```swift
leftViewController.swift
frontViewController.swift
rightViewController.swift
frontViewNavController.swift
```

Now in your appdelegate file, within didFinishLaunchingWithOptions, initialize SWRevealController and pass the created controllers to there respective locations. (I think this is fairly self explanatory )

```swift
 window = UIWindow(frame: UIScreen.main.bounds)
 window?.makeKeyAndVisible();

 let frontView = frontViewNavController()
 let frontViewCont = frontViewController()
 frontView.viewControllers = [frontViewCont]

 let leftView = leftViewController();
 let rightView = rightViewController();

 let revealController = SWRevealViewController.init(rearViewController: leftView, frontViewController: frontView);
 revealController?.setRight( rightView, animated: true );

 window?.rootViewController = revealController;

 return true
```

Now go to your app setting (under your appname in the file tree) and go to "Deployment info". Remove the the value of "Main interface" and hit enter. This prevents your app from starting on its main storyboard.


To create nav buttons and make them op the left and right menu's create the following funtions inside frontViewController.swift

```swift
    func setNavigationBar()
    {
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "< Menu",
            style: .plain,
            target: self,
            action: #selector( leftNavTap )
        )

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Menu >",
            style: .plain,
            target: self,
            action: #selector( rightNavTap )
        )

    }

    func leftNavTap()
    {
        self.revealViewController().revealToggle( self.revealViewController() )
    }


    func rightNavTap()
    {
        self.revealViewController().rightRevealToggle( self.revealViewController() )
    }
```

And for the swipe gestures add the following function

```swift
    func frontGestures()
    {
        view.addGestureRecognizer( self.revealViewController().panGestureRecognizer() )
        view.addGestureRecognizer( self.revealViewController().tapGestureRecognizer() )
    }
```

Now Call the following two functions from within viewDidLoad

```swift
    override func viewDidLoad()
    {
        self.setNavigationBar()
        self.frontGestures()
    }
```

If all is well you can now build and run your app. The download includes the setup of dummy menu's and passing data between the controllers. Just have a look.. it's all pretty basic.

vanaf1979.nl / About
--------
While learning new programming languages and frameworks i like to come up with small experiments like this one. I could throw them in the bin, but why not shere for others, and maybe get some sugestions for improvements.
