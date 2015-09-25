//
//  AppDelegate.swift
//  SearchAPIs
//
//  Created by Franks, Kent on 9/23/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//

import UIKit
import CoreSpotlight


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController:UINavigationController?
    var mainStoryboard: UIStoryboard?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        navigationController = self.window?.rootViewController as? UINavigationController
        mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return true
    }
    
    func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool {
        if userActivity.activityType == CSSearchableItemActionType {
            if let identifier = userActivity.userInfo?[CSSearchableItemActivityIdentifier] as? String {
                if identifier == "View A" {
                    let viewAController = mainStoryboard!.instantiateViewControllerWithIdentifier("ViewA") as! ViewA_ViewController
                    navigationController!.pushViewController(viewAController, animated: true)
                    return true
                } else if identifier == "View B" {
                    let viewBController = mainStoryboard!.instantiateViewControllerWithIdentifier("ViewB") as! ViewB_ViewController
                    navigationController!.pushViewController(viewBController, animated: true)
                    return true
                }
            }
        }
        return false
    }


    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

