import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible();
        
        let frontNavView = frontViewNavController()
        let frontViewCont = frontViewController()
        frontViewCont.title = "SWRecealImp"
        frontNavView.viewControllers = [frontViewCont]
        
        let frontView = frontNavView;
        let leftView = leftViewController();
        let rightView = rightViewController();
        
        let revealController = SWRevealViewController.init(rearViewController: leftView, frontViewController: frontView);
        revealController?.setRight( rightView, animated: true );
        
        window?.rootViewController = revealController;
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
 
    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }


}

